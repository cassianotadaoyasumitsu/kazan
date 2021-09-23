class Company < ApplicationRecord
  has_many :users, :through => :team
end
