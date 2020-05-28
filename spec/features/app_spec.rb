require './app'

feature "outputs Testing infrastructure working! string" do
  it "returns Testing infrastructure working!" do
    visit '/'
    expect(page).to have_content("Testing infrastructure working!")
  end
end

feature "except input and return onto screen" do
  it "displays player names after they fill in form and submit" do
    visit '/'
    fill_in 'player_1', with: 'Steve'
    fill_in 'player_2', with: 'John'
    click_button 'Submit'
    expect(page).to have_content("Player 1: Steve vs Player 2: John")
  end
end
