
# fonction pour trouver la crypto qui a la plus grosse valeur
def max_currency(my_hash)
  max = my_hash.values.max
  hash_crypto_max = Hash[my_hash.select{ |_k, v| v == max }]
  crypto_max = hash_crypto_max.keys.to_s
  puts "la crypto qui a la plus grosse valeur est #{crypto_max} qui vaut $ #{max}"
end

# fonction pour trouver la crypto qui a la plus petite valeur
def min_currency(my_hash)
  min = my_hash.values.min
  hash_crypto_min = Hash[my_hash.select{ |_k, v| v == min }]
  crypto_min = hash_crypto_min.keys.to_s
  puts "la crypto qui a la plus petite valeur est #{crypto_min} qui vaut $ #{min}"
end

# fonction pour trouverle nombre de crypto qui contiennent le mot "coin"
def coin_currency(my_hash)
  coin = my_hash.select{ |k, _v| k.include? 'coin' }
  puts "le nombre de crypto qui contiennent le mot \"coin\": #{coin.size}"
end

def currency6000(my_hash)
  under6000 = my_hash.select{ |_k, v| v < 6000 }
  puts under6000.inspect
end