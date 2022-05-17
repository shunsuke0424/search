class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name, null:false
      t.integer :number
      t.text :detail, null:false
      t.string :place
      t.text :images_path
      t.integer :frequency
      t.string :activity_day
      t.string :sns_link
      t.string :company_category
      t.timestamps
    end
  end
end
