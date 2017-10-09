feature 'User searches game' do
  scenario 'they see the search box on the page' do
    visit jogos_path

    fill_in 'Search', with: 'The Legend of Zelda: Breath of the Wild'
    click_button 'Search'

    expect(page).to have_css '.foobar-name', 'My foobar'
  end
end
