json.array!(@contacts) do |contact|
  json.extract! contact, :to, :subject, :body
  json.url contact_url(contact, format: :json)
end
