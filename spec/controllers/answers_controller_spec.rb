require 'rails_helper'

describe AnswersController, type: :controller do
let(:question) { create(:question) }   
  describe 'POST #create' do
           
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
describe 'PATCH #update' do
    let!(:answer) { create(:answer, question: question) } 
    it 'assign the requested answer @answer' do 
        patch :update, params: { id: answer,question_id: question, answer: attributes_for(:answer), format: :js  }
        expect(assigns(:answer)).to eq answer
        end
    it 'assign the question' do
      patch :update, params: { id: answer,question_id: question, answer: attributes_for(:answer), format: :js  }
      expect(assigns(:question)).to eq question
    end
    it 'changes answer attributes' do
       
        patch :update, params: { id: answer, question_id: question, answer:{ body: 'new body'}, format: :js }
        answer.reload
        expect(answer.body).to eq 'new body'
    end   
    it 'render update template to the update question' do
        patch :update, params: { id: answer,question_id: question, answer: attributes_for(:answer), format: :js  }
        expect(response).to render_template :update
        end     
 end
end

