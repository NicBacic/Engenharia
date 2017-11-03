Given /^I am signed as user "([^"]*)"$/ do |user_name|
  skip_this_scenario
  user = User.find_by_username(user_name)
  visit login_path
  puts page.html
  fill_in "username_field", :with=> user_name
  fill_in "password_field", :with=> "1234"
  find_button("submit_login").click
  expect(page).to have_css("a", :text => "Account")
end

When /^I go to Jogo page "([^"]*)"$/ do |jogo_name|
  visit "/jogos/3"
end

When /^I fill "([^"]*)" with "([^"]*)"$/ do |review_text_area, review_name|
  puts page.html
  fill_in "review_text_area", :with=> review_name, visible: false
  
end



