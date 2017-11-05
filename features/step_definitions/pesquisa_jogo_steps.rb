Given(/^I am on the Jogos page$/) do
  @jogo = FactoryBot.create(:jogo)
  visit jogos_path
end

When("I fill field {string} with {string} and press {string}") do |string, string2, string3|
  fill_in "search_box", :with=> "The Legend of Zelda"
  click_button 'search_button'
end

Then("I should see {string}") do |string|
  expect(page).to have_content("The Legend of Zelda")
end

