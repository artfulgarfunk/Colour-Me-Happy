require 'rails_helper.rb'

feature 'Welcome' do
  it "Users arriving at the page" do
    visit('/')
    expect(page).to have_content 'Colour Me Happy'
    expect(page).to have_content 'Click a colour to search images'
  end

  it "Users can select a colour to be redirected to a new page showing results" do
    visit('/')
    click_link_or_button "red"
    expect(current_path).to eq "/results"
  end

  it "where the selected colour is used as a filter along with a random serach term" do
    visit('/')
    click_link_or_button "red"
    expect(page).to have_content 'Colourful Results!'
    expect(page).to have_content "Showing top 5 results for"
    expect(page).to have_content "with a red filter"
  end

end
