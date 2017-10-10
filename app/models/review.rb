class Review < ApplicationRecord
  validates :texto, presence: true
  validates :nome_do_jogo, presence: true
end
