class AddApplyDetailsToApply < ActiveRecord::Migration[6.1]
  def change
    add_column :apply_posts, :apply_date, :datetime
    add_column :apply_posts, :apply_where, :string
    add_column :apply_posts, :age, :integer
    add_column :apply_posts, :mail, :string
    add_column :apply_posts, :interview, :datetime
    add_column :apply_posts, :phonenumber, :integer
    add_column :apply_posts, :passfail, :string
    add_column :apply_posts, :course, :string
    add_column :apply_posts, :tantou, :string
  end
end
