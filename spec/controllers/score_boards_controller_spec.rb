require 'rails_helper'

RSpec.describe ScoreBoardsController, type: :controller do
  before do
    create(:student, total_score: 400, grade: 'A')
    create(:student, total_score: 300, grade: 'B')
    create(:student, total_score: 200, grade: 'C')
  end

  describe '#index' do
    context 'When students data present with marks' do
      it 'returns valid score board data' do
        get :index
        
        expect(response).to have_http_status(:success)
        expect(assigns(:result)).to be_present
        expect(assigns(:student_scores)).to be_present
        expect(assigns(:a_grade_count)).to be_present
        expect(assigns(:b_grade_count)).to be_present
        expect(assigns(:c_grade_count)).to be_present
        expect(assigns(:above_average_count)).to be_present
        expect(assigns(:below_average_count)).to be_present
      end
    end
  end 
end