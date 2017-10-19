class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: {minimum: 4, maximum: 100}
  validates :password, presence: true, length: {minimum: 4, maximum: 100}
  #validates :first_name, presence: true
  #validates :last_name, presence: true
  #validates :email, presence: true
  has_secure_password
  has_many :usuarioAvaliaJogos
  has_many :reviews
end
