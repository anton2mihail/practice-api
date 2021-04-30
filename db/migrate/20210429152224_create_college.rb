class CreateCollege < ActiveRecord::Migration[6.1]
  def change
    create_table :colleges, id: false, primary_key: :college_id  do |t|
      t.primary_key :college_id
      t.string :name, null: false
      t.timestamps
    end

  end
end
