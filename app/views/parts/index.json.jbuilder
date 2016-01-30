json.array!(@parts) do |part|
  json.extract! part, :id, :name, :start, :ending
  json.url part_url(part, format: :json)
end
