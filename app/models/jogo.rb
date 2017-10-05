class Jogo < ApplicationRecord

  def self.search(term)
    if term
      where('nome LIKE ?', "%#{term}%")
    else
      order('id DESC')
    end
  end

end
