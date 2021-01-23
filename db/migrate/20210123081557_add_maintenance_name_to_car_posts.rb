class AddMaintenanceNameToCarPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :car_posts, :maintenance_name, :string
  end
end
