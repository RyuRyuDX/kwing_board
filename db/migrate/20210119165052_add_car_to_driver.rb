class AddCarToDriver < ActiveRecord::Migration[6.1]
  def change
    add_column :car_posts, :car_to_driver, :integer
    add_column :car_posts, :turn_car, :integer
  end
end
