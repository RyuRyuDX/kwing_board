class AddOfferDetailsToOffer < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :offer_start_day, :integer
    add_column :offers, :offer_place, :string
    add_column :offers, :offer_course, :string
    add_column :offers, :offer_howmany, :integer
    add_column :offers, :offer_tantou, :string

  end
end
