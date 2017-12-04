Given("I am new user") do
  @user = FactoryBot.create :user
  visit home_path
  expect(current_path).to eq home_path
end

When("I go to Login page {string}") do |string|
  visit login_path
  expect(current_path).to eq login_path
end

When("I fill {string} with {string} and {string} with {string}") do |string, user_name, string2, password|
  fill_in "username_field", :with=> user_name
  fill_in "password_field", :with=> password
end

When("I click button {string}") do |button|
  find_button(button).click
end

Then("I should go to {string} page") do |string|
  expect(current_path).to eq home_path
end
