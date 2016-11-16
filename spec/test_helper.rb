def add_restaurant_and_return
  visit '/restaurants'
  click_link 'Add a restaurant'
  fill_in :name, with: 'My restaurant'
  fill_in :description, with: 'A great place to eat'
  click_button 'Add Restaurant'
end

def visit_my_restaurant
  add_restaurant_and_return
  click_link 'My restaurant'
end
