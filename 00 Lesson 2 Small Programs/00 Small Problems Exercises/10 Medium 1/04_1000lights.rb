def thousand_lights(n)
  arr = []
  (1..n).each { |i| arr << i }
  (2..n).each do |row|
    (row..n).step(row).each do |col|
      arr[col - 1] = arr[col - 1] == col ? nil : col
    end
  end
  arr.compact
end

p thousand_lights(5)
p thousand_lights(10)
p thousand_lights(20)
p thousand_lights(1000)

# Others solutions


def thousand_lights2(num)
  arr = []
  arr.fill(true, 0, num)
  1.upto(num - 1) do |i|
    (i..num - 1).step(i + 1) { |i2| arr[i2] = !arr[i2] }
  end
  arr.map.with_index { |v, i| i + 1 if v }.compact
end


p thousand_lights2(5)
p thousand_lights2(10)
p thousand_lights2(20)
# p thousand_lights2(1000)

# Other methods
# using a hash structure

def thousand_lights3(n)
  lights = {}
  1.upto(n) { |i| lights[i] = false }
  1.upto(n) { |i| i.step(n, i) { |j| lights[j] = !lights[j] } }
  lights.keys.select { |idx| lights[idx] }
end

p thousand_lights3(5)
p thousand_lights3(10)
p thousand_lights3(20)
# p thousand_lights3(1000)
# Using an array

def thousand_lights4(n)
  lights = [false]*n
  1.upto(n) { |i| i.step(n, i) { |j| lights[j] = !lights[j] } }
  lights.each_with_index.with_object([]) { |(light, idx), obj| obj << idx if light }
end

p thousand_lights4(5)
p thousand_lights4(10)
p thousand_lights4(20)
# p thousand_lights4(1000)



