require 'rails_helper.rb'

feature 'Welcome' do
  it "Users arriving at the page" do
    visit('/')
    expect(page).to have_content 'Colour Me Happy'
    expect(page).to have_content 'Click a colour to search...'
  end

  it "Users can select a colour to be redirected to a new page showing results" do
    visit('/')
    click_link_or_button "red"
    expect(current_path).to eq "/results"
  end

  context "where the selected colour is used as a filter along with a random serach term" do
    it "displays a welcome message based on what colour you selected" do
      visit('/')
      click_link_or_button "pink"
      expect(page).to have_content 'Colourful Results...'
      expect(page).to have_content "Top 5 results for"
      expect(page).to have_content "with a pink filter"
    end

    it "displays the top 5 image results" do
      visit('/results?colour=blue&noun=happiness')
      expect(page).to have_content 'Top 5 results for happiness with a blue filter'
      expect(page).to have_selector('img')
      expect(page).to have_link("")
    end

  end

end
