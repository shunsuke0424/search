class CreateCompanyArts < ActiveRecord::Migration[6.1]
  def change
    create_table :company_arts do |t|
      t.references :company, null: false, foreign_key: true
      t.references :art, null: false, foreign_key: true
      t.timestamps
      t.index [:company_id, :art_id], unique: true
    end
  end
end
