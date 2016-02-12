json.array!(@hackers) do |hacker|
  json.extract! hacker, :id, :name, :email, :generation_id
  json.url hacker_url(hacker, format: :json)
end
