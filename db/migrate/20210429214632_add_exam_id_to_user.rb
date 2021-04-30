class AddExamIdToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :exam_id, :integer
    #  add_foreign_key :users, :exams, column: :exam_id, primary_key: "exam_id"
    add_foreign_key :users, :exams, column: :exam_id, primary_key: "exam_id"

  end
end
