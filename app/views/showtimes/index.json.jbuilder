json.array!(@showtimes) do |showtime|
  json.extract! showtime, :id, :date, :showable_id
  json.url showtime_url(showtime, format: :json)
end
