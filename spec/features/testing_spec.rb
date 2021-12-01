feature 'Expects players to fill in their names' do
  scenario 'Asks for a name' do
    sign_in_and_play
    expect(page).to have_content('Riky vs Jessica')
  end
end



