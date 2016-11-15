def add_restaurant_and_return
  visit '/restaurants'
  click_link 'Add a restaurant'
  fill_in :name, with: 'My restaurant'
  fill_in :description, with: 'A great place to eat'
  fill_in :rating, with: 5
  click_button 'Add Restaurant'
end