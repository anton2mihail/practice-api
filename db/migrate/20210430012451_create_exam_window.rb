class CreateExamWindow < ActiveRecord::Migration[6.1]
  def change
    create_join_table :users, :exams, table_name: :exam_windows do |t|
      t.index :user_id
      t.index :exam_id
      t.datetime :start_time
      t.datetime :end_time
    end
  end
end
