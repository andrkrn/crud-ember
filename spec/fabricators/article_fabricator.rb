Fabricator(:article) do
  title { Faker::Name.name }
  body { Faker::Lorem.sentence }
end