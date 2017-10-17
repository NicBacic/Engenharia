class UsuarioAvaliaJogo < ApplicationRecord
  belongs_to :user
  belongs_to :jogo
end
