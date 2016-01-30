json.array!(@suits) do |suit|
  json.extract! suit, :mac_id
  json.url suit_url(suit, format: :json)
end
