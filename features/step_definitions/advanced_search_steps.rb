Given("I have some games added") do
  jogo1 = FactoryBot.create :jogo
  jogo2 = FactoryBot.create :jogo
  jogo3 = FactoryBot.create :jogo
  expect(Jogo.all.count).to be 3
end

Given("I am on the Advanced Search page") do
  visit new_search_path
  expect(page).to have_current_path(new_search_path)
end

When("I fill the field {string} with {string}") do |search_desenvolvedora, desenvolvedora|
    fill_in search_desenvolvedora, :with=> desenvolvedora
end

When("the field {string} with {string}") do |search_nome, nome|
  fill_in search_nome, :with=> nome
end

When("I press {string}") do |btn_advanced_search|
  click_button btn_advanced_search
end

Then("I should see a list of games named {string}") do |jogoNome|
  expect(page).to have_current_path(search_path(1))
  expect(page).to have_content(jogoNome)
end

