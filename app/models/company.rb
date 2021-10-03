class Company < ApplicationRecord
  has_many :users
  has_many :requests
end
