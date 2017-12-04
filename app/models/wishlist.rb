class Wishlist < ApplicationRecord
  has_and_belongs_to_many :jogo
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'

  validates :user_id, presence: true
end
