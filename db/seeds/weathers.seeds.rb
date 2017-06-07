[
  ['Sunny', 'SU', 1],
  ['Partly Cloudy', 'PC', 2],
  ['Cloudy', 'CL', 3],
  ['Fog', 'FG', 4],
  ['Light Rain', 'LR', 5],
  ['Rain', 'RN', 6],
  ['Sleet', 'SL', 7],
  ['Snow', 'SN', 8]
].each_with_index do |weather, i|
  Weather.seed(:id,
    { id: i+1, name: weather[0], code: weather[1], sort_order: weather[2] }
  )
end
