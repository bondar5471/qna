# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: %i[github facebook]
  has_many :answers, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :authorizations
  has_many :subscriptions, dependent: :destroy
  has_many :question_subscriptions, through: :subscriptions, source: :question
  has_many :comments

  def author_of?(resource)
    id == resource.user_id
  end

  def subscribed_for?(question)
    !!subscriptions.where(question_id: question).first
  end

  def subscribtion_for(question)
    subscriptions.where(question_id: question).first
  end

  def self.send_daily_digest
    find_each.each do |user|
      DailyMailer.digest(user).deliver_later
    end
  end

  def self.find_for_oauth(auth)
    authorization = Authorization.where(provider: auth.provider, uid: auth.uid.to_s).first
    return authorization.user if authorization

    email = auth.info[:email]
    user = User.where(email: email).first
    if user
      user.authorizations.create!(provider: auth.provider, uid: auth.uid)
    else
      password = Devise.friendly_token[0, 20]
      user = User.create!(email: email, password: password, password_confirmation: password)
      user.authorizations.create!(provider: auth.provider, uid: auth.uid)
    end
    user
  end
end
