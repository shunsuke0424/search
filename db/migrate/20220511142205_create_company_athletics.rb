class CreateCompanyAthletics < ActiveRecord::Migration[6.1]
  def change
    create_table :company_athletics do |t|
      t.references :company, null: false, foreign_key: true
      t.references :athletic, null: false, foreign_key: true
      t.timestamps
      t.index [:company_id, :athletic_id], unique: true
    end
  end
end
