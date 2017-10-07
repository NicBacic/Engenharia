Given(/^I am on the Jogos page$/) do
  visit jogos_path
end

When("I fill field {string} with {string}") do |string, string2|
  fill_in "search_box", :with=> "The Legend of Zelda: Breath of the Wild"
end

When("I press {string}") do |string|
  find_button("search_button").click
  save_and_open_page
end

Then("I should see {string}") do |string|
  page.has_content?("The Legend of Zelda: Breath of the Wild")
end

