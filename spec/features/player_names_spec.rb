require './app'

feature "display player names" do
  scenario "displays player names after they fill in a form and submit" do
    sign_in_and_play
    expect(page).to have_content("Player 1: Steve vs Player 2: John")
  end
end
