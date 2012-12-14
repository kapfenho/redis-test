require 'rubygems'
require 'redis'

products = ["ATO100", "ATO200", "ATO250", "ATO300",
            "ATO400", "ATO450", "ATO460", "ATO500",
            "ATO600", "ATO610", "ATO620", "ATO700"]
db = Redis.new

for i in 1000000..2000000
  prods = []
  nr_prod = Random.rand(2..5)
  for x in 1..nr_prod
    db.lpush i, products[Random.rand(0..11)]
  end
#  p "#{i} #{prods}"
#  p db[i]
end

# db['Horst'] = '42'
# p db['Horst']
