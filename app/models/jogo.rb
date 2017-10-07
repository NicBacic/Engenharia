class Jogo < ApplicationRecord

  def self.search(term)
    if term
      term.downcase
      where('nome LIKE ?', "%#{term}%")
      #order('nome ASC')
    else
      order('nome ASC')
    end
  end

end
