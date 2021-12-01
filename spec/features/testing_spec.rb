feature 'Expects players to fill in their names' do
  scenario 'Asks for a name' do
    visit('/')
    fill_in('player_1', with: 'Riky')
    fill_in('player_2', with: 'Jessica')
    click_button('submit')
    expect(page).to have_content('Riky vs Jessica')
  end
end

feature 'Expects player 1 to see player 2 hit points' do
  scenario 'View hit points' do
    visit('/names')
    click_button('View player 2 hit points')
    expect(page).to have_content('Player 2 hit points')
  end
end

