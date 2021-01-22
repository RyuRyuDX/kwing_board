class AddPassCarDetailsToCarPost < ActiveRecord::Migration[6.1]
  def change
    add_column :car_posts, :operation, :string
    add_column :car_posts, :driver, :string
    add_column :car_posts, :car_to_driver, :string
    add_column :car_posts, :car_course, :string
    add_column :car_posts, :gensan, :string
    add_column :car_posts, :turn_car, :string
    add_column :car_posts, :work_or_not, :string
  end
end
