json.extract! team, :id, :created_at, :updated_at, :tm_cover, :tm_name, :tm_about, :tm_joined_date, :tm_project_id, :tm_professional_id
json.url team_url(team, format: :json)