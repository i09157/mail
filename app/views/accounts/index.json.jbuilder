json.array!(@accounts) do |account|
  json.extract! account, :kanjiname, :kananame, :mail_addr, :hierarchy_id
  json.url account_url(account, format: :json)
end
