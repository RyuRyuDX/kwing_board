json.extract! car_post, :id, :car_number, :car_name, :created_at, :updated_at
json.url car_post_url(car_post, format: :json)
