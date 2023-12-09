class ScoreBoardsController < ApplicationController
  def index
    @result = ScoreBoard.score_result
    @student_scores = @result[:student_scores]
    grade = @result[:grade_report]
    @a_grade_count = grade[:a_grade_count]
    @b_grade_count = grade[:b_grade_count]
    @c_grade_count = grade[:c_grade_count]
    @above_average_count = grade[:above_average_count]
    @below_average_count = grade[:below_average_count]
  end
end
