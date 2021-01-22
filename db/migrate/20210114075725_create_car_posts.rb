class CreateCarPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :car_posts do |t|
      t.integer :car_number
      t.string :car_name

      t.timestamps
    end
  end
end
