class Jogo < ApplicationRecord
  has_many :usuarioAvaliaJogos
  def self.search(term)
    if term
      where('lower(nome) LIKE ?', "%#{term}%".downcase)
      #order('nome ASC')
    else
      order('nome ASC')
    end
  end

end
