require 'rails_helper'

RSpec.describe ScoreBoard do
  describe '.score_result' do
    let(:students) { [double('Student', id: 1, subject_1: 50, subject_2: 48, subject_3: 70, subject_4: 60, total_score: 300, grade: 'A', above_average?: true)] }

    before do
      allow(Student).to receive(:all).and_return(students)
    end

    it 'returns a hash with student scores and grade report' do
      result = ScoreBoard.score_result

      expect(result).to be_a(Hash)
      expect(result[:student_scores]).to be_an(Array)
      expect(result[:grade_report]).to be_a(Hash)
      expect(result[:student_scores][0].keys).to eq([:id, :subject1, :subject2, :subject3, :subject4, :grand_total, :grade, :grade_average_compare])
      expect(result[:student_scores][0].values).to eq(["01", 50, 48, 70, 60, 300, "A", "ABOVE"])
      expect(result[:grade_report].keys).to eq([:a_grade_count, :b_grade_count, :c_grade_count, :above_average_count, :below_average_count])
      expect(result[:grade_report].values).to eq([1, 0, 0, 1, 0])
    end
  end
end

