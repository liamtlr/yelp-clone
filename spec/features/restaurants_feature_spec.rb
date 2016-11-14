require 'rails_helper'

feature 'restaurants' do
  context 'no restaurants have been added' do
    before do
      Restaurant.create(name: 'Dominos')
    end

    scenario 'should display a prompt to add a restaurant' do
      visit ('/restaurants')
      expect(page).to have_content "Restaurant listings: There are currently no listings available"
      expect(page).to have_link "Add a restaurant"
    end

    scenario 'display restaurants' do
      visit ('/restaurants')
      expect(page).to have_content "Dominos"
      expect(page).not_to have_content "Restaurant listings: There are currently no listings available"
    end
  end
end
