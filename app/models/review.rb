class Review < ApplicationRecord
  belongs_to :jogo, optional: true
end
