class CreateApplyPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :apply_posts do |t|
      t.string :candidate_name
      t.string :address

      t.timestamps
    end
  end
end
