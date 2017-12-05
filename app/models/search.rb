class Search < ApplicationRecord

  def search_jogos

    jogos = Jogo.all

    jogos = jogos.where("lower(nome) LIKE ?","%#{nome}%".downcase) if nome.present?
    jogos = jogos.where("console LIKE ?", console) if console.present?
    jogos = jogos.where("publisher LIKE ?", "%#{publisher}%") if publisher.present?
    jogos = jogos.where("desenvolvedora LIKE ?", "%#{desenvolvedora}%") if desenvolvedora.present?
    #jogos = jogos.where("rating >= ?", min_rating) if min_rating.present?
    #jogos = jogos.where("rating <= ?", max_rating) if max_rating.present?

    return jogos

  end

end
