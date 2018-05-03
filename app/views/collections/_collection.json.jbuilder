json.extract! collection, :id, :created_at, :updated_at, :coll_title, :coll_about, :coll_project_id
json.url collection_url(collection, format: :json)
