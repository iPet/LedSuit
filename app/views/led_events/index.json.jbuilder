json.array!(@led_events) do |led_event|
  json.extract! led_event, :id, :color, :mode, :start_time, :end_time, :scenario_id, :part_id
end
