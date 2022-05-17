class Art < ApplicationRecord
  has_many :company_arts
  has_many :companies, through: :company_arts
end
