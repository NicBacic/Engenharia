class Search < ApplicationRecord

  validates :nome, presence: false
  validates :desenvolvedora, presence: false
  validates :publisher, presence: false
  validates :console, presence: false
  validates :min_rating, numericality: {greater_than: -1, less_than_or_equal_to: 10}, allow_blank: true
  validates :max_rating, numericality: {greater_than: -1, less_than_or_equal_to: 10}, allow_blank: true

  def search_jogos

    jogos = Jogo.all

    jogos = jogos.where("lower(nome) LIKE ?","%#{nome}%".downcase) if nome.present?
    jogos = jogos.where("console LIKE ?", console) if console.present?
    jogos = jogos.where("publisher LIKE ?", "%#{publisher}%") if publisher.present?
    jogos = jogos.where("desenvolvedora LIKE ?", "%#{desenvolvedora}%") if desenvolvedora.present?
    #jogos = jogos.where("rating >= ?", min_rating) if min_rating.present?
    #jogos = jogos.where("rating <= ?", max_rating) if max_rating.present?
   
    return jogos.sort_by{ |h| h[:nome]}

  end

end
