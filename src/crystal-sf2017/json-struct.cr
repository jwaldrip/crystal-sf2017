require "json"

struct ImmutableJSON
  JSON.mapping(
    first_name: String,
    last_name: String
  )
end

json = <<-json
  {
    "first_name": "Jason",
    "last_name": "Waldrip"
  }
json

puts ImmutableJSON.from_json(json)
