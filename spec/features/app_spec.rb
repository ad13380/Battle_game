require './app'




feature "testing" do
  it "returns Testing infrastructure working!" do
    visit '/'
    expect(page).to have_content("Hello Battle!")
  end
end
