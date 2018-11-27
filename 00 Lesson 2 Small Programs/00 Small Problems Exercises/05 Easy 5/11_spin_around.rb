# Small Problems Exercises. Easy 5.
# 11.- Spin Around

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

my_string = "Hello World"

p spin_me(my_string).object_id # "olleh dlrow"
p my_string.object_id