class Jogo < ApplicationRecord
  validates :rating, numericality: {greater_than: -1, less_than_or_equal_to: 10}

  has_many :usuarioAvaliaJogos
  has_many :reviews
  def self.search(term)
    if term
      where('lower(nome) LIKE ?', "%#{term}%".downcase)
      #order('nome ASC')
    else
      order('nome ASC')
    end
  end

end
