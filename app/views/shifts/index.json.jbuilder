json.array!(@shifts) do |shift|
  json.extract! shift, :id, :start_time, :end_time.datetime, :organization_id
  json.url shift_url(shift, format: :json)
end
