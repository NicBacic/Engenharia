class Review < ApplicationRecord
  belongs_to :jogo, class_name: 'Jogo', foreign_key: 'jogo_id'
  belongs_to :user, optional: true, class_name: 'User', foreign_key: 'user_id'

  validates :texto, presence: true
end
