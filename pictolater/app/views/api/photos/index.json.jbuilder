json.photos @photos do |photo|
  json.extract! photo, :id, :owner_id, :url, :updated_at, :created_at
  json.extract! photo.owner, :username
end
