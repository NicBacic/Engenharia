class Jogo < ApplicationRecord

  has_many :jogo_tags
  has_many :usuarioAvaliaJogos
  has_many :reviews

  #has_many :jogos, :through => :jogo_tags

  validates :rating, numericality: {greater_than: -1, less_than_or_equal_to: 10}, allow_blank: true 
  validates :nome, presence: true
  validates :desenvolvedora, presence: true
  validates :publisher, presence: true
  validates :console, presence: false

  def self.search(term)
    if term
      where('lower(nome) LIKE ?', "%#{term}%".downcase)
      #order('nome ASC')
    else
      order('nome ASC')


    end
  end

end
