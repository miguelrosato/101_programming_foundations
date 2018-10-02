# 101 Programming Foundations. Exercises. Easy 2.
# 9.- String Assignment

name = 'Bob'
save_name = name      # save_name gets assigned Bob
name = 'Alice'        # name gets assigned Alice
puts name, save_name  # will print Alice, Bob


name = 'Bob'          # name gets assigned Bob
save_name = name      # save_name gets assigned name (which has value Bob)
name.upcase!          # Mutates the name variable to BOB
puts name, save_name  # BOB, BOB


