class ScoreBoard
  def self.score_result
    students = Student.all
    student_scores = generate_student_scores(students)
    grade_report = generate_grade_report(students)
    { student_scores: student_scores, grade_report: grade_report }
  end

  private

  def self.generate_student_scores(students)
    students.map do |student|
      {
        id: (student.id < 10 ? "0#{student.id}" : student.id),
        subject1: student.subject_1,
        subject2: student.subject_2,
        subject3: student.subject_3,
        subject4: student.subject_4,
        grand_total: student.total_score,
        grade: student.grade,
        grade_average_compare: (student.above_average? ? "ABOVE" : 'BELOW')
      }
    end
  end

  def self.generate_grade_report(students)
    a_grade_count = count_students_in_grade(students, 'A')
    b_grade_count = count_students_in_grade(students, 'B')
    c_grade_count = count_students_in_grade(students, 'C')
    above_average_count = count_students_above_average(students)
    below_average_count = count_students_below_average(students)

    {
      a_grade_count: a_grade_count,
      b_grade_count: b_grade_count,
      c_grade_count: c_grade_count,
      above_average_count: above_average_count,
      below_average_count: below_average_count
    }
  end

  def self.count_students_in_grade(students, grade)
    students.select { |student| student.grade == grade }.count
  end

  def self.count_students_above_average(students)
    students.select { |student| student.above_average? }.count
  end

  def self.count_students_below_average(students)
    students.select { |student| !student.above_average? }.count
  end
end
