class Athletic < ApplicationRecord
  has_many :company_athletics
  has_many :companies, through: :company_athletics
end
