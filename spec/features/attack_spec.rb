require './app'

feature "attack player 2" do
  scenario "player 1 attacks player 2 and gets confirmation" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content("Steve attacked John!")
  end
end

feature "attack player 1" do
  scenario "player 2 attacks player 1 and gets confirmation" do
    sign_in_and_play
    click_button 'Switch'
    click_button 'Attack'
    expect(page).to have_content("John attacked Steve!")
  end
end
