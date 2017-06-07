[
  ['Not Observed', 'no', 0],
  ['Possible', 'po', -1],
  ['Probable', 'pr', -2],
  ['Confirmed', 'co', -3]
].each_with_index do |nest_code, i|
  NestCode.seed(:id, { id: i+1, name: nest_code[0], abbreviation: nest_code[1], code: nest_code[2] })
end
