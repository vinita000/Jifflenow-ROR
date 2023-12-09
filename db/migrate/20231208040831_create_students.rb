class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.integer :subject_1
      t.integer :subject_2
      t.integer :subject_3
      t.integer :subject_4
      t.integer :total_score
      t.boolean :above_average, default: false
      t.string :grade
      t.timestamps
    end
  end
end
