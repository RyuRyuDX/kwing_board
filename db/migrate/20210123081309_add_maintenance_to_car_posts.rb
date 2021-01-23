class AddMaintenanceToCarPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :car_posts, :maintenance, :string
  end
end
