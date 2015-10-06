json.array!(@identities) do |identity|
  json.extract! identity, :id, :provider, :uid, :data
  json.url identity_url(identity, format: :json)
end
