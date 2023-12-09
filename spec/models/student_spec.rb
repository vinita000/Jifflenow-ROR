require 'rails_helper'

RSpec.describe Student, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:subject_1) }
    it { should validate_presence_of(:subject_2) }
    it { should validate_presence_of(:subject_3) }
    it { should validate_presence_of(:subject_4) }

    it 'validates the presence of a valid grade' do
      student = build(:student, grade: 'D')

      expect(student).not_to be_valid
      expect(student.errors[:grade]).to include('is Invalid')
    end
  end

  describe 'calculate_grade' do
    it 'calculates the grade and total score' do
      student = create(:student, total_score: 300)

      student.calculate_grade
      expect(student.total_score).to eq(300)
      expect(student.grade).to eq('B')
    end
  end

  describe 'above_average' do
    it 'sets above_average based on the total score and average score' do
      student = create(:student, grade: 'B', total_score: 300)
      allow(student).to receive(:calculate_average_score).and_return(250.0)

      student.above_average

      expect(student.above_average).to be_truthy
    end
  end
end
