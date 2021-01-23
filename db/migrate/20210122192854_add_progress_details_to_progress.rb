class AddProgressDetailsToProgress < ActiveRecord::Migration[6.1]
  def change
    add_column :progresses, :progress_offer, :string
    add_column :progresses, :progress_interview, :string
    add_column :progresses, :progress_contract, :string
    add_column :progresses, :progress_training, :string
    add_column :progresses, :progress_assignment, :string
  end
end
