class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.float :subject_1
      t.float :subject_2
      t.float :subject_3
      t.float :subject_4
      t.float :total_score
      t.boolean :above_average, default: false
      t.string :grade
      t.timestamps
    end
  end
end
