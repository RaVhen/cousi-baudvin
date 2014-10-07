json.array!(@tests) do |test|
  json.extract! test, :id, :puissant, :sexe, :sexy
  json.url test_url(test, format: :json)
end
