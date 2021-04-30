class CreateExam < ActiveRecord::Migration[6.1]
  def change
    create_table :exams, id: false, primary_key: :exam_id do |t|
      t.primary_key :exam_id

      t.references :college_id, references: :colleges, null: false


      # t.references :user_id, references: :users, null: true

      t.timestamps
    end

    rename_column :exams, :college_id_id, :college_id
    add_foreign_key :exams, :colleges, column: 'college_id', primary_key: 'college_id'

    # rename_column :exams, :user_id_id, :user_id
    # add_foreign_key :exams, :users, column: 'user_id', primary_key: 'user_id'
  end
end
