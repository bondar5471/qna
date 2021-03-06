# frozen_string_literal: true

require 'rails_helper'
describe 'Profile API' do
  describe 'GET #me' do
    it_behaves_like 'API Authenticable'
  end
  context 'authorize' do
    let(:me) { create(:user) }
    let(:access_token) { create(:access_token,  resource_owner_id: me.id) }

    before { get '/api/v1/profiles/me', params: { format: :json, access_token: access_token.token } }

    it 'return 200 status' do
      expect(response).to be_success
    end

    it 'return email' do
      expect(response.body).to be_json_eql(me.email.to_json).at_path('email')
    end
    it 'contains id' do
      expect(response.body).to be_json_eql(me.id.to_json).at_path('id')
    end

    it 'does not contain password' do
      expect(response.body).to_not have_json_path('password')
    end
    it 'does not contain encripted_password' do
      expect(response.body).to_not have_json_path('encrypted_password')
    end
  end
end
