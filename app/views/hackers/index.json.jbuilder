json.array!(@hackers) do |hacker|
  json.extract! hacker, :id, :name, :email, :generation_id
  json.url generation_hacker_url(@generation, hacker, format: :json)
end
