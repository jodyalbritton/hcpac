json.array!(@profiles) do |profile|
  json.extract! profile, :id, :first_name, :middle_name, :last_name, :bio, :user_id
  json.url profile_url(profile, format: :json)
end
