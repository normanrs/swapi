require 'rails_helper'

describe 'as a user' do
  it 'returns character info' do
    visit '/'
    fill_in 'Search', with: 'Luke'
    click_on('Search')

    expect(current_path).to eq('/search')
    expect(page).to have_css(".result", count: 1)
    expect(page).to have_content('Name: Luke Skywalker')
    expect(page).to have_content('Height: 172')
    expect(page).to have_content('Mass: 77')
    expect(page).to have_content('Birth Year: 19BBY')
    expect(page).to have_content('Gender: male')
    expect(page).to have_content('Species:')
    expect(page).to have_content('Human')

  end

end

# As a user
# When I visit "/"
# And I fill in the search form with: Luke
# And I click "Search"
# Then I should be on page "/search"
# The I should see a single search result.
# For the search result I should see their name, height, mass, birth year, gender and species.
