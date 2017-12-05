FactoryBot.define do
  factory :jogo do |jogo|
    jogo.sequence(:nome) { |n| "The Legend of Zelda: #{n}"}
    jogo.publisher              "Nintendo"
    jogo.desenvolvedora         "Nintendo EPD"
    jogo.rating                 "10"
    jogo.console                "Switch"
  end
end
