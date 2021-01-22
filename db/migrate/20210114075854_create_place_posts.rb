class CreatePlacePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :place_posts do |t|
      t.string :place_name
      t.string :address

      t.timestamps
    end
  end
end
