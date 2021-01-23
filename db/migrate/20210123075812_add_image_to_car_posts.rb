class AddImageToCarPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :apply_posts, :image, :string
  end
end

