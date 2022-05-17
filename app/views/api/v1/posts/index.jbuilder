json.posts @posts do |post|
  json.extract! post, :id, :content, :created_at
end