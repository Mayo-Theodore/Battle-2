feature 'Expect player 1 to attack player 2' do
  scenario 'Attack player' do
    sign_in_and_play
    click_link("attack")
    expect(page).to have_content("Riky attacked Jessica")
  end
end

