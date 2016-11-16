require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  it 'is not valid with a name less than 3 chars' do
    restaurant = Restaurant.create(name: 'a')
    expect(restaurant).to have(1).error_on :name
    expect(restaurant).not_to be_valid
  end

  it 'is not valid with an existing name' do
    Restaurant.create(name: 'a restaurant')
    restaurant = Restaurant.create(name: 'a restaurant')
    expect(restaurant).to have(1).error_on :name
    expect(restaurant).not_to be_valid
  end
end