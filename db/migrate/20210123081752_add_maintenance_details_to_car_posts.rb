class AddMaintenanceDetailsToCarPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :car_posts, :return_maintenance, :datetime
    add_column :car_posts, :which_warehouse, :string
    add_column :car_posts, :to_maintenance, :datetime
  end
end
