class ApplyPost < ApplicationRecord
    belongs_to :home, optional: true
    has_many_attached :images
end
