class AddNameToProgress < ActiveRecord::Migration[6.1]
  def change
    add_column :progresses, :progress_name, :string
  end
end
