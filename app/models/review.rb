class Review < ApplicationRecord
  belongs_to :jogo, optional: true, class_name: 'Jogo', foreign_key: 'jogo_id'
  belongs_to :user, optional: true, class_name: 'User', foreign_key: 'user_id'
end
