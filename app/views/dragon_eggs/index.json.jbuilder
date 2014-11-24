json.array!(@dragon_eggs) do |dragon_egg|
  json.extract! dragon_egg, :id, :race, :count, :description
  json.url dragon_egg_url(dragon_egg, format: :json)
end
