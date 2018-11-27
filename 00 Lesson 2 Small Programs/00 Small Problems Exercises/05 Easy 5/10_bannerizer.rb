# Small Problems Exercises. Easy 5.
# 10.- Bannerizer

# Write a method that will take a short line of text, and print it within a box.

def print_in_box(str)
  box_length = str.length + 2
  line = "+#{'-' * box_length}+"
  void = "|#{' ' * box_length}|"
  puts line
  puts void
  puts "| #{str} |"
  puts void
  puts line
end


print_in_box("To boldly go where no one has gone before.")

print_in_box("")


