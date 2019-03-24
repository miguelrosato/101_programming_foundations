# Lesson 5: Advanced Ruby Collections. Practice Problems
# Sorting, Nested Collections and Working with Blocks
# Question 2


# How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?

def sort_books(arr)
  arr.sort_by { |hsh| hsh[:published].to_i }
end

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

p sort_books(books)