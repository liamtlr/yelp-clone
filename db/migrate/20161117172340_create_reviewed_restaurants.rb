class CreateReviewedRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :reviewed_restaurants do |t|

      t.timestamps
    end
  end
end
