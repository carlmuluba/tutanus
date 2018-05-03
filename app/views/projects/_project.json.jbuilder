json.extract! project, :id, :created_at, :updated_at, :proj_title, :proj_about, :proj_startdate, :proj_enddate, :proj_kind
json.url project_url(project, format: :json)
