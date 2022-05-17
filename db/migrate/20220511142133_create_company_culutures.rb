class CreateCompanyCulutures < ActiveRecord::Migration[6.1]
  def change
    create_table :company_culutures do |t|
      t.references :company, null: false, foreign_key: true
      t.references :culuture, null: false, foreign_key: true
      t.timestamps
      t.index [:company_id, :culuture_id], unique: true
    end
  end
end
