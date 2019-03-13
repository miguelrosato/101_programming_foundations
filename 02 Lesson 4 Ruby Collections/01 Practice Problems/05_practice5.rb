# What does shift do in the following code? How can we find out?

  hash = { a: 'ant', b: 'bear' }
  p hash.shift

# shift takes the first key, value pair and return it as an array. we can found this in the documentation Hash#shift

# Removes a key-value pair from hsh and returns it as the two-item array [ *key, value* ], or the hash’s default value if the hash is empty.