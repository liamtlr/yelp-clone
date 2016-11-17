class AddColumnsToReviewedRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :reviewed_restaurants, :user_id, :integer
    add_column :reviewed_restaurants, :restaurant_id, :integer
  end
end
