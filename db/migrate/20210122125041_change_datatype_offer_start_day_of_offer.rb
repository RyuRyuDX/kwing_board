class ChangeDatatypeOfferStartDayOfOffer < ActiveRecord::Migration[6.1]
  def change
    change_column :offers, :offer_start_day, :datetime
  end
end
