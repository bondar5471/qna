# frozen_string_literal: true

require 'rspec/its'
require 'rails_helper'

RSpec.describe Question, type: :model do
  subject { build(:question) }
  it { should have_many :answers }
  it { should validate_presence_of :title }
  it { should validate_presence_of :body }
  it { should have_many :attachments }
  it { should accept_nested_attributes_for :attachments }
  its(:title) { should == 'MyString' }

  describe 'reputation' do
    let(:user) { create(:user) }
    subject { build(:question, user: user) }
    it 'should calculate reputation after creating' do
      expect(Reputation).to receive(:calculate).with(subject)
      subject.save!
    end

    it 'should not calculate reputation after update' do
      subject.save!
      expect(Reputation).to_not receive(:calculate)
      subject.update(title: '123')
    end

    it 'should save user reputation' do
      allow(Reputation).to receive(:calculate).and_return(5)
      expect { subject.save! }.to change(user, :reputation).by(5)
    end
    it 'test time' do
      now = Time.now.utc
      allow(Time).to receive(:now) { now }
      subject.save!
      expect(subject.created_at).to eq now
    end
  end

  it 'test double' do
    question = double(Question, title: '123')
    allow(Question).to receive(:find) { question }
    expect(Question.find(1).title).to eq '123'
  end
end
