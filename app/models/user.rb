class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates_presence_of :first_name
  validates_presence_of :last_name
end
