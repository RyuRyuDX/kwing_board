class CarPost < ApplicationRecord
    belongs_to :home, optional: true
end
