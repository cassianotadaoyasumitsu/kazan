class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable,
  :recoverable, :rememberable, :validatable

  after_create :send_welcome_email

  belongs_to :company
  belongs_to :team
  has_many :requests
  has_and_belongs_to_many :roles

  def role_name
    roles = self.roles
    roles.each do |role|
      case role.name
        when 'admin' then return 'admin'
        when 'manager' then return 'manager'
        when 'director' then return 'director'
        else return 'employee'
      end
    end
  end


  private

  def send_welcome_email
    UserMailer.with(user: self).welcome.deliver_now
  end

end
