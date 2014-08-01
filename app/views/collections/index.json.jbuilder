json.array!(@collections) do |collection|
  json.extract! collection, :id, :user, :mutliverseid, :quantity, :name
  json.url collection_url(collection, format: :json)
end
