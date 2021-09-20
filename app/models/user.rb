class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable,
  :recoverable, :rememberable, :validatable

  belongs_to :company
  has_many :requests
  has_and_belongs_to_many :roles

end
