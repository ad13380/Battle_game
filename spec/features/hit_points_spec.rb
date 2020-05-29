require './app'

feature "display hit points" do
  scenario "displays player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content("John's HP: 60/60")
  end
end
