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

    it_behaves_like 'calculates reputation'
  end
end
