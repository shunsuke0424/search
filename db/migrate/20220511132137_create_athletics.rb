class CreateAthletics < ActiveRecord::Migration[6.1]
  def change
    create_table :athletics do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
