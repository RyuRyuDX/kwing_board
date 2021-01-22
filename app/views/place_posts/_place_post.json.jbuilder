json.extract! place_post, :id, :place_name, :address, :created_at, :updated_at
json.url place_post_url(place_post, format: :json)
