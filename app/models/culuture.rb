class Culuture < ApplicationRecord
  has_many :company_culutures
  has_many :companies, through: :company_culutures
end
