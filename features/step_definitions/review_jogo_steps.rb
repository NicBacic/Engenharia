Given ("I am signed as user {string}") do |user_name|
  visit login_path
  user = FactoryBot.create(:user)
  fill_in "username_field", :with=> user_name
  fill_in "password_field", :with=> user.password
  find_button("submit_login").click
  expect(current_path).to eq home_path
end

When ("I go to Jogo page {string}") do |jogo_name|
  jogo = FactoryBot.create(:jogo)
  visit jogo_path(jogo.id)
end

When ("I fill {string} with {string}") do |review_text_area, review_name|
  fill_in review_text_area,visible: false, :with=> review_name
end

When ("I confirm my review in {string}") do |review_button|
  click_button 'review_button', visible: false
end

Then ("the game page should have content {string} written by {string}") do |review_name, username|
  expect(page).to have_css("p", :text => review_name)
  expect(page).to have_css("p", :text => username)
end

