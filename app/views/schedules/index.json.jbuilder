json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :employee_id, :shift_id
  json.url schedule_url(schedule, format: :json)
end
