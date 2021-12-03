feature 'Expect player 1 to attack player 2' do
  scenario 'Attack player' do
    sign_in_and_play
    click_link("attack")
    expect(page).to have_content("Riky attacked Jessica")
  end

  scenario 'Attack player and reduce hp' do
    sign_in_and_play
    click_link("attack")
    expect(page).to have_content "Jessica's HP: 90"
  end
end

