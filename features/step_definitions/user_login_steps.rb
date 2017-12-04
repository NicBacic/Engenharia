

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
  expect(@user).to_not be nil
end

Given("I am already signed") do
  @user = FactoryBot.create :user
  expect(@user).to_not be nil
  visit login_path
  fill_in "username_field", :with=> @user.username
  fill_in "password_field", :with=> @user.password
  find_button("submit_login").click
end

Given("I have a Wishlist") do
  @user.wishlist = Wishlist.new
  expect(@user.wishlist.jogo.count).to be 0
end


When("I should see and click button {string}") do |add_to_list_button|
  click_button add_to_list_button, visible: false
end

When("I should see my personal page") do
  user = @user
  expect(page).to have_current_path(user_path(@user.id))
  expect(page).to have_content(@user.username)
end

When("I click the link {string}") do |wishlist_link|
  click_link wishlist_link, visible: false
end

Then("my personal Wishlist should have content {string}") do |game_name|
  user = @user
  visit user_wishlist_path(user,user.wishlist.id)
  expect(current_path).to eq user_wishlist_path(user,user.wishlist.id)
  expect(page).to have_content(user.username)
  expect(page).to have_content(game_name)
end
