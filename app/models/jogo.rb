class Jogo < ApplicationRecord
  has_many :jogo_tags
  has_many :jogos, :through => :jogo_tags

  def self.search(term)
    if term
      where('lower(nome) LIKE ?', "%#{term}%".downcase)
      #order('nome ASC')
    else
      order('nome ASC')
    end
  end

end
