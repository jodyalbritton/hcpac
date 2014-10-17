json.array!(@productions) do |production|
  json.extract! production, :id, :title, :description, :start_date, :end_date
  json.url production_url(production, format: :json)
end
