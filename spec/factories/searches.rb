FactoryBot.define do
  factory :search do |search|
    search.nome "The Legend of Zelda"
    search.console "Switch"
    search.publisher "Nintendo"
    search.desenvolvedora "Nintendo EPD"
    search.min_rating "0"
    search.max_rating "10"
  end
end
