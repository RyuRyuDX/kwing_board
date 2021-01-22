class AddPassCandidateDetailsToApplyPost < ActiveRecord::Migration[6.1]
  def change
    add_column :apply_posts, :important, :string
    add_column :apply_posts, :driver_license, :string
    add_column :apply_posts, :resident_card, :string
    add_column :apply_posts, :parking, :string
    add_column :apply_posts, :contract, :string
    add_column :apply_posts, :name_change, :string
    add_column :apply_posts, :vehicle_inspection, :string
    add_column :apply_posts, :car_to_driver, :string
  end
end
