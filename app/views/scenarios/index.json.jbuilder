json.array!(@scenarios) do |scenario|
  json.extract! scenario, :id, :name, :time
  json.url scenario_url(scenario, format: :json)
end
