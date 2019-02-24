def diamond(n)
  0.upto(n / 2).each do |idx|
    puts " " * (n / 2 - idx) + "*" * (idx + 1) + "*" * idx
  end
  (n / 2 - 1).downto(0).each do |idx|
    puts " " * (n / 2 - idx) + "*" * (idx + 1) + "*" * idx
  end
end


diamond(1)
diamond(3)
diamond(9)
diamond(25)


def hollow_diamond(n)
  0.upto(n / 2).each do |idx|
    if idx.zero?
      puts " " * (n / 2 - idx) + "*" 
    else
      puts " " * (n / 2 - idx) + "*" + " " * ((idx - 1) * 2 + 1) + "*"
    end
  end
  (n / 2 - 1).downto(0).each do |idx|
    if idx.zero?
      puts " " * (n / 2 - idx) + "*" 
    else
      puts " " * (n / 2 - idx) + "*" + " " * ((idx - 1) * 2 + 1) + "*"
    end
  end
end


hollow_diamond(3)
hollow_diamond(9)
hollow_diamond(25)