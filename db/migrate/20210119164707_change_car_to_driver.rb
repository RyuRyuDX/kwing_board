class ChangeCarToDriver < ActiveRecord::Migration[6.1]
  def change
    remove_column :car_posts, :car_to_driver, :string
    remove_column :car_posts, :turn_car, :string
  end
end
