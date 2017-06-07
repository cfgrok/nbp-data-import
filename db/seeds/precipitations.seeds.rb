[
  ['Light Rain', 1],
  ['Rain', 2],
  ['Sleet', 3],
  ['Snow', 4]
].each_with_index do |precipitation, i|
  Precipitation.seed(:id,
    { id: i+1, name: precipitation[0], sort_order: precipitation[1] }
  )
end
