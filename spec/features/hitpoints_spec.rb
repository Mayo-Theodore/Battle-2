
feature 'Expects player 1 to see player 2 hit points' do
  scenario 'View hit points' do
    sign_in_and_play
    expect(page).to have_content("Riky's HP: 10")
  end
end