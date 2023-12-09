class Student < ApplicationRecord
  validates :subject_1, :subject_2, :subject_3, :subject_4, presence: true
  validate :check_grade
  after_create :calculate_grade

  def check_grade
    unless ['A', 'B', 'C'].include?(grade)
      errors.add(:grade, 'is Invalid') if grade.present?
    end
  end

  def calculate_grade
    self.grade = calculate_grade_from_score(total_score)
    save
  end

  def above_average
    average_score = calculate_average_score
    self.above_average = total_score >= average_score
    save
  end

  private

  def calculate_total_score
    self.total_score = subject_1 + subject_2 + subject_3 + subject_4
    save
  end


  def calculate_grade_from_score(score)
    if score >= 340
      'A'
    elsif score >= 300
      'B'
    else
      'C'
    end
  end

  def calculate_average_score
    Student.where(grade: grade).average(:total_score).to_f
  end
end
