flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones.each_with_object({}) do |name, hash|
  hash[name] = flintstones.index(name)
end

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end