# frozen_string_literal: true

require 'rails_helper'

describe 'Questions API' do
  describe 'GET index' do
    it_behaves_like 'API Authenticable'
    context 'authorize' do
      let(:access_token) { create(:access_token) }
      let!(:questions) { create_list(:question, 2) }
      let(:question) { questions.first }
      let!(:answer) { create(:answer, question: question) }
      before { get '/api/v1/questions', params: { format: :json, access_token: access_token.token } }

      it 'returns 200 status code' do
        expect(response).to be_success
      end

      it 'render list of questions' do
        expect(response.body).to have_json_size(2).at_path('questions')
      end

      %w[id title body created_at updated_at].each do |attr|
        it "question obj contain #{attr}" do
          expect(response.body).to be_json_eql(question.send(attr.to_sym).to_json).at_path("questions/0/#{attr}")
        end
      end

      it 'question abj contain short_title' do
        expect(response.body).to be_json_eql(question.title.truncate(10).to_json).at_path('questions/0/short_title')
      end

      context 'answers' do
        it 'included in question obj' do
          expect(response.body).to have_json_size(1).at_path('questions/0/answer')
        end

        %w[id body created_at updated_at].each do |attr|
          it "contains #{attr}" do
            expect(response.body).to be_json_eql(answer.send(attr.to_sym).to_json).at_path("questions/0/answers/0/#{attr}")
          end
        end
      end
    end
  end

  private

  def missing_json_path!(path)
    raise JsonSpec::MissingPath, path
  end
end
