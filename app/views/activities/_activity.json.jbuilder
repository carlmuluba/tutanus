json.extract! activity, :id, :created_at, :updated_at, :act_name, :act_about, :act_address, :act_lat, :act_long, :act_date, :act_project_id, :act_team_id
json.url activity_url(activity, format: :json)
