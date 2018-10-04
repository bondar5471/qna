# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Attachment, type: :model do
  it { have_many :attachable }
end
