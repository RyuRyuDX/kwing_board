class PlacePost < ApplicationRecord
    belongs_to :home, optional: true
end
