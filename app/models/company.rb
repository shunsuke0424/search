class Company < ApplicationRecord
  has_one :company_athletic, dependent: :destroy
  has_one :athletic, through: :company_athletic
  has_one :company_art, dependent: :destroy
  has_one :art, through: :company_art
  has_one :company_culuture, dependent: :destroy
  has_one :culuture, through: :company_culuture

  enum activity_day: {
    sunday: 'sunday',
    monday: 'monday',
    tuesday: 'tuesday',
    wednesday: 'wednesday',
    thursday: 'thursday',
    friday: 'friday',
    saturday: 'saturday'
  }
  enum company_category: { athletic: 'athletic', culuture: 'culuture', art: 'art' }
end
