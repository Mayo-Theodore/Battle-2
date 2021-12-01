feature 'Expects players to fill in their names' do
  scenario 'Asks for a name' do
    visit('/')
    fill_in('player_1', with: 'Riky')
    fill_in('player_2', with: 'Jessica')
    click_button('submit')
    expect(page).to have_content('Riky vs Jessica')
  end
end

