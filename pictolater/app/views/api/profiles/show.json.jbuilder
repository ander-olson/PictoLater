
json.extract! @profile, :title, :id, :owner_id

json.extract! @profile.owner, :username

json.photos @photos do |photo|
  json.extract! photo, :id, :owner_id, :url, :updated_at, :created_at
end
