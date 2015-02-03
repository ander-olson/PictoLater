
json.profiles @profiles do |profile|
  json.extract! profile, :title, :id, :owner_id
  json.extract! profile.owner, :username
end
