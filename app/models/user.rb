class User < ApplicationRecord
  validates :name, :email, presence: true
  has_many :company_users
  has_many :companies, through: :company_users
end
