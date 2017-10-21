class UsuarioAvaliaJogo < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'id_user'
  
  belongs_to :jogo, class_name: 'Jogo', foreign_key: 'id_jogo'
end
