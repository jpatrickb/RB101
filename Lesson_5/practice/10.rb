[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  new_hash = {}
  hash.map do |_,num|
    new_hash[key] = num + 1
  end
  new_hash
end

