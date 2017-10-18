class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: {minimum: 4, maximum: 100}
  validates :password, presence: true, length: {minimum: 4, maximum: 100}
  validates :password_digest, presence: true

  has_secure_password
  has_many :usuarioAvaliaJogos
end
