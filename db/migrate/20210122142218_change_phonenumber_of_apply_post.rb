class ChangePhonenumberOfApplyPost < ActiveRecord::Migration[6.1]
  def change
    change_column :apply_posts, :phonenumber, :string
  end
end
