class AddHomeDetailsToHome < ActiveRecord::Migration[6.1]
  def change
    add_column :homes, :title, :string
    add_column :homes, :content, :text
  end
end
