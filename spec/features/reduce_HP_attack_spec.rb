require './app'

feature "attack player 2" do
  scenario "player 2's HP is reduced by 10 after being attacked" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content("John's HP: 50/60")
  end
end
