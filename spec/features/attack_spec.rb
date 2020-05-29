require './app'

feature "attack player 2" do
  scenario "player 1 attacks player 2 and gets confirmation" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content("You attacked player 2")
  end
end
