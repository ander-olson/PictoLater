json.photos @photos do |photo|
  json.extract! photo, :id, :owner_id, :url
  json.extract! photo.owner, :username
end
