json.array!(@posts) do |post|
  json.extract! post, :id, :title, :link_url, :notes, :user_id, :category_id
  json.url post_url(post, format: :json)
end
