class ApplyPost < ApplicationRecord
    belongs_to :home, optional: true
end
