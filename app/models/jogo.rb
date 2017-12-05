class Jogo < ApplicationRecord

  has_many :jogo_tags
  has_many :usuarioAvaliaJogos
  has_many :reviews
<<<<<<< HEAD
=======

  validates :rating, numericality: {greater_than: -1, less_than_or_equal_to: 10}, allow_blank: true
  validates :nome, presence: true
  validates :desenvolvedora, presence: true
  validates :publisher, presence: true

  #has_many :jogos, :through => :jogo_tags
>>>>>>> 1b47e07723cc24c615a8ce837ee7422778cd66f1

  validates :rating, numericality: {greater_than: -1, less_than_or_equal_to: 10}, allow_blank: true 
  validates :nome, presence: true
  validates :desenvolvedora, presence: true
  validates :publisher, presence: true
  validates :console, presence: false

  has_many :usuarioAvaliaJogos
  has_many :reviews

<<<<<<< HEAD
  #has_many :jogos, :through => :jogo_tags

=======
>>>>>>> 1b47e07723cc24c615a8ce837ee7422778cd66f1
  def self.search(term)
    if term
      where('lower(nome) LIKE ?', "%#{term}%".downcase)
      #order('nome ASC')
    else
      order('nome ASC')


    end
  end

end
