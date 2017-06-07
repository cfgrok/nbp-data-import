[
  ['No Wind', 'NW', 1],
  ['Light Wind', 'LW', 2],
  ['Medium Wind', 'MW', 3],
  ['High Wind', 'HW', 4],
  ['N/A', 'N/A', 5]
].each_with_index do |wind, i|
  Wind.seed(:id, { id: i+1, name: wind[0], code: wind[1], sort_order: wind[2] })
end
