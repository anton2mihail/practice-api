class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users, id: false, primary_key: :user_id do |t|
      t.primary_key :user_id
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.references :college_number, references: :colleges, null: false
      t.timestamps
    end

    rename_column :users, :college_number_id, :college_number
    add_foreign_key :users, :colleges, column: 'college_number', primary_key: 'college_id'
  end
end
