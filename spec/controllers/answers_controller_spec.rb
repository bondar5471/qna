require 'rails_helper'

describe AnswersController, type: :controller do
   
  describe 'POST #create' do
    let(:question) { create(:question) }
           
    context 'with valid attributes' do
        it 'save the new answer the database' do
              
            expect { post :create, params: { answer: attributes_for(:answer), question_id: question, format: :js } }.to change(question.answers, :count).by(1)
           
        end
    
            it 'redirects to show view' do
              
              post :create, params: { answer: attributes_for(:answer), question_id: question, format: :js }
              expect(response).to render_template :create
                  end
              end  
    context 'with invalid attributes' do
        it 'does not save the answer' do
          expect { post :create, params: { answer: attributes_for(:invalid_answer), question_id: question, format: :js } }.to_not change(Answer, :count)  
         end
        it 're-render new viev' do
         post :create, params: { answer: attributes_for(:invalid_answer), question_id: question, format: :js}
         expect(response).to render_template :create
               end
          end
         
end
end
