json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :graph_id, :ref_id, :decade, :gender, :country_of_origin, :main_genre
  json.url artist_url(artist, format: :json)
end
