feature 'reviewing' do

  scenario 'allows users to leave a review using a form' do
    sign_up
    add_restaurant
    sign_out
    sign_in_as_diff_user
    visit '/restaurants'
    click_link 'Review KFC'
    fill_in "Thoughts", with: "so so"
    select '3', from: 'Rating'
    click_button 'Leave Review'
     expect(current_path).to eq '/restaurants'
     click_link 'KFC'
     expect(page).to have_content('so so')
  end

end
