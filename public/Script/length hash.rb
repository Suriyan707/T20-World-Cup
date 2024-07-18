def length(hash)
  hash = hash.sort{ |key, value| key.to_s.length }.to_h
  return hash
end
my_hash = {a:1, b:2, c:4, d:3, e:2}
hash = length(my_hash)
puts "hash value: #{my_hash.inspect}"
puts "Hash Length: #{hash.inspect}"