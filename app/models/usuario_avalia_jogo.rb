class UsuarioAvaliaJogo < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :jogo, class_name: 'Jogo', foreign_key: 'jogo_id'
end
