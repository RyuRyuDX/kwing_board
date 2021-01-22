class Home < ApplicationRecord
    has_many :car_posts
    has_many :place_posts
    has_many :apply_posts
    has_many :offers
end
