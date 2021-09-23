class Team < ApplicationRecord
  has_many :users, :through => :company
end
