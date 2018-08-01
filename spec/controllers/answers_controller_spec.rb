require 'rails_helper'

RSpec.describe AnswersController, type: :controller do
    #byebug
    let(:question) { create(:question) }
    let(:answer) { create(:answer, question: question) }
    
    describe 'GET #index' do
    let(:answers) {create_list(:answer, 2, question: question)}
    

    before { get :index }

    it 'populates an array of all answers' do
        expect(assigns(:answers)).to match_array(answers)  
    end

    it 'render index view' do
     expect(response).to render_template :index
    end
end
describe 'GET #show' do
   
      
    before { get :show, params: { id: answer } }
    
    it 'assings the  requested to @answer' do
    expect(assigns(:answer)).to eq answer
  end

    it 'render show view' do
    expect(response).to render_template :show
  end
end
describe 'GET #new' do
    before { get :new }
    it 'assign a new Answer to @answer' do
        expect(assigns(:answer)).to be_a_new(Answer)
    end

    it 'render new view' do
        expect(response).to render_template :new
      end
end
describe 'GET #edit' do

    before { get :edit, params: { id: answer } }
     
     it 'assigns the  requested to @answer' do
        expect(assigns(:answer)).to eq answer
       end
     it 'render edit view' do
      expect(response).to render_template :edit
            end  
        end
        describe 'POST #create' do
            context 'with valid attributes' do
            it 'save the new answer the database' do
              
            expect { post :create, params: { answer: attributes_for(:answer) } }.to change(Answer, :count).by(1)
          end
            it 'redirects to show view' do
              
              post :create, params: { answer: attributes_for(:answer) }
              expect(response).to redirect_to answer_path(assigns(:answer))
                  end
              end  
          context 'with invalid attributes' do
          it 'does not save the answer' do
              expect { post :create, params: { answer: attributes_for(:invalid_answer) } }.to_not change(Answer, :count)  
          end
          it 're-render new viev' do
              post :create, params: { answer: attributes_for(:invalid_answer) }
              expect(response).to render_template :new
          end
          end
          end
          describe 'PATH #update' do
            context 'valid attributes' do
               
            it 'assign the requested answer @answer' do
                   
                 patch :update, params: { id: answer, answer: attributes_for(:answer) }
                 expect(assigns(:answer)).to eq answer
                 end
          end
    
          it 'changes answer attributes' do
           
            patch :update, params: {id: answer, answer:{ body: 'new body'} }
            answer.reload
            expect(answer.body).to eq 'new body'
        end
        it 'redirects to the update answer' do
            patch :update, params: {id: answer, answer: attributes_for(:answer) }
            expect(response).to redirect_to answer
            end
    
            context 'invalid attributes' do
                before {patch :update, params: {id: answer, answer:{ body: nil } }}
            it 'does no change answer attributes' do
                answer.reload
            
                expect(answer.body).to eq 'MyText'
            end
            it 're-render edit view' do
                expect(response).to render_template :edit
            end
            end
        end
        describe 'DELETE #destroy' do
            before { answer }
            it 'delete answer' do
            expect {delete :destroy, params: {id: answer}}.to change(Answer, :count).by(-1)
            end
            it 'redirect to index view' do
                delete :destroy, params: {id: answer}
                expect(response).to redirect_to answer_path
            end
        end 
end
