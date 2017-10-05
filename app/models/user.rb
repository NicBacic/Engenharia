class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  #validates :first_name, presence: true
  #validates :last_name, presence: true
  #validates :email, presence: true
end
