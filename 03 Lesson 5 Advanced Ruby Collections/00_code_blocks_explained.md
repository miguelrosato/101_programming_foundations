# Working With Blocks. Describe what a Block do

## This is how a block of code needs to be described at the Exam

- What is the type of action being performed (method call, block, conditional, etc..)?
- What is the object that action is being performed on?
- What is the side-effect of that action (e.g. output or destructive action)?
- What is the return value of that action?
- Is the return value used by whatever instigated the action?

The core goal of this assignment is to give you the tools to deconstruct and analyze code dealing with collections. Working with collections is a core task of any problem, so it's common to come across code that's iterating, selecting and transforming nested data structures. To the untrained eye, it can seem like a jumbled mess and there's no way anyone can understand it without running the code to "see if it works". But to the trained practitioner, we need to adopt a more engineering mindset and take apart the code line by line, letter by letter.

At this point you should be very comfortable with loops, and using them to work with collections. You should also be comfortable with the different data structures and manipulating them to fit your needs. Combine that knowledge with practice and you'll be able to understand more complex problems like the ones in this assignment.

## Some important things to remember:

If at first code appears opaque or complex, take the time to break it down step by step.
If necessary use some sort of systematic approach (such as the tabular method outlined in this assignment).
Figure out what is happening at each step, paying particular attention to:
Return value
Side effects
Pay attention to the return values of all statements in your code, especially where implicit return values are being relied on.
Make sure you have a clear understanding of the underlying concepts such as data structure, loops, iterative methods and the blocks passed to them (go back over earlier assignments if necessary).
Be clear about the method implementation of the iterative method(s) being used, especially:
What values are passed to the block
What the method does with the return value of the block
If you are unclear about a method implementation, a good initial step is to refer to the Ruby Docs.

## Example 1

```ruby
[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end
# 1
# 3
=> [[1, 2], [3, 4]]
```

1. The `Array#each` method is being called on the multi-dimensional array `[[1, 2], [3, 4]]`. 
2. Each inner array is passed to the block in turn and assigned to the local variable arr. 
3. The `Array#first` method is called on arr and returns the object at index 0 of the current array - in this case the integers 1 and 3, respectively. 
4. The `puts` method then outputs a string representation of the integer. 
5. `puts` returns nil and, since this is the last evaluated statement within the block, the return value of the block is therefore nil. each doesn't do anything with this returned value though, and since the return value of each is the calling object - in this case the nested array `[[1, 2], [3, 4]]` - this is what is ultimately returned.

In Tabular Format

| Line   | Action	     | Object	| Side Effect	| Return Value	| Is Return Value Used? |
|:------:|:------------|:-------|:------------|:--------------|:----------------------|
| 32	 | method call `Array#each`	| The outer array |	None |	The calling object	| No, but shown on line 19 |
| 32-34	| block execution	| Each sub-array |	None |	nil |	No |
| 33 |	method call `Array#first` |	Each sub-array |	None |	Element at index 0 of sub-array |	Yes, used by puts |
| 33	| method call `puts`	| Element at index 0 of sub-array |	Outputs string representation of an Integer	| nil |	Yes, used to determine return value of block |

## Example 2

```ruby
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end
# 1
# 3
# => [nil, nil]
```

1. The `Array#map` method is being called on the multi-dimensional array `[[1, 2], [3, 4]]`.
2. Each Inner array is passed to the block in turn and passed to the local variable arr.
3. The `Array#first` method is called on arr and returns the object at index 0 of the current sub-array - in this case the integers 1 and 3, respectively.
4. The `puts` method is called on the first element of each sub-array, and a string representation of the value is printed to the terminal
5. `puts` returns nil and, since this is the last line of the block, the block itself returns nil. maps then incorporates each returned value (in this case nil) into the transformed array [nil, nil]


| Line | Action	     | Object	| Side Effect	| Return Value	| Is Return Value Used? |
|:----:|:------------|:-------|:------------|:--------------|:----------------------|
| 58 | Method call `Array#map` | The outer multidimensional array | None | New Array `[nil, nil]` | No, but shown on line 45 |
| 58 - 60 | Block Execution | Each Sub-Array | None  | Nil | Yes, Used by Map for Transformation |
| 59 | Method call `Array#first` | Each Inner array | None | First Element of each Inner Array | Yes, by the `puts` method |
| 59 | Method call `puts` | Each Inner Array initial value | Produces a string representation of the value | nil | Yes, to determine return value of the block | 

## Example 3
```ruby
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end
```

1. The `Array#map` method is being called on the multi-dimensional array `[[1, 2], [3, 4]]`.
2. Each Inner array is passed to the block in turn and passed to the local variable arr.
3. The `Array#first` method is called on arr and returns the object at index 0 of the current sub-array - in this case the integers 1 and 3, respectively.
4. The `puts` method is called on the first element of each sub-array, and a string representation of the value is printed to the terminal
5. The `Array#first` method is called again on arr and returns the object at index 0 of the current sub-array - in this case the integers 1 and 3, respectively. maps then incorporates each returned value (in this case 1 and 3) into the transformed array [1, 3] and this is returned

| Line | Action	     | Object	| Side Effect	| Return Value	| Is Return Value Used? |
|:----:|:------------|:-------|:------------|:--------------|:----------------------|
| 82 | Method call `Array#map` | Multidimensional array | None | New Array `[1, 3]` | No | 
| 82 - 85 | Block Execution | Each Sub-Array | None | First Element of Each Sub-Array | Yes, used by `Array#map` for transformation |
| 83 | Method call `Array#first` | Each Sub-Array | None | First Element of Each Sub-Array | Yes, by the `puts` Method |
| 83 | Method call `puts` | First Element of Each Sub-Array | First element is printed as a string in terminal | `nil` | No
| 84 | Method call `Array#first` | Each Sub-Array | None | First Element of Each Sub-Array | Yes, used to determine the return value of the block |

## Example 4
```ruby
my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end
```

1. A variable Assignment. The variable `my_arr` is assigned the return value of the block. in this case `[[18, 7], [3, 12]]`
2. The `Array#each` method is called on the multidimensional array `[[18, 7], [3, 12]]`
3. Each Sub-Array is passed into the block and assigned to the local variable arr
4. The `Array#each` method is called in the sub array arr
5. Each element of the arr array is then passed into the nested block and assigned the variable num
6. The comparison `>` is then passed to each element of the sub-array
7. The conditional `if` is then used on each value of the block that passed by the comparison in the inner block
8. If the condition is true, then the `puts` method is passed into the num variable and its value is printed in the terminal as a string

| Line | Action	     | Object	| Side Effect	| Return Value	| Is Return Value Used? |
|:----:|:------------|:-------|:------------|:--------------|:----------------------|
| 104 | Variable Assignment | N/A | None | `[[18, 7], [3, 12]]` | No |
| 104 | Method call `Array#each` | `[[18, 7], [3, 12]]` | None | Original Multi Dim Array `[[18, 7], [3, 12]]` | Yes, Used by Variable Assignment to my_arr |
| 104 - 110 | Outer Block Execution | Each Sub Array | None | Each Sub Array |  No |
| 105 | Method Call `Array#each` | Each Sub-Array | None | Each Sub-Array | Yes, Used to determine the return value of the block |
| 105 - 109 | Inner Block Execution | Each Element of Sub-Array | None | `Nil` | No |
| 106 | Comparison `>` | Each Element of Sub-Array | None | Boolean | Yes, Evaluated by `if` Conditional |
| 106 - 108 | Conditional Block `if` | Each Element of Sub-Array | None | nil | Yes, to evaluate return value of inner block |
| 107 | Method call `puts` | each element of the sub-array | Outputs string representation of value | `nil` | yes, used to determine return value of the inner block |


## Example 5

```ruby
[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end
```

1. The `Array#map` method is called on the multidimensional array `[[1, 2], [3, 4]]`
2. Each Sub-Array is passed into the block and assigned to the local variable `arr`
3. The `Array#map` method is called in the sub array arr
4. Each element of the arr array is then passed into the nested block and assigned the variable num
5. The operation `num * 2` is then passed to each element of the sub-array
6. The inner block return a new sub array equivalent to the initial sub-array with the values multiplied by 2
7. The Outer block return a new multi-dimensional Array, with the each inner value equivalent to the original multidimensional array [[2, 4], [6, 8]]

| Line | Action	     | Object	| Side Effect	| Return Value	| Is Return Value Used? |
|:----:|:------------|:-------|:------------|:--------------|:----------------------|
| 137 | Method call `Array#map` | Multi-Dim Array | None | Transformed Multi-Dim Array | no |
| 137 - 141 | Outer Block Execution | Each Sub-Array from multi-dim Array | None | new Sub-Array Transformed | Yes, in the outer map return value |
| 138 | Method call `Array#map` | each sub-Array | none | Transformed Sub-Array | yes, to determine outer block return value|
| 138 - 140 | Inner Block Execution | Each element of Each Sub-Array | None | Integer (double of original value) | Yes, by inner `#map` for transformation. 
| 139 | Operation `num * 2`  | N/A | None | Integer | Yes, Used to determine Return Value of Inner block |


## Example 6

```ruby
[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]
```

1. The `Array#select` method is called in the Array of Hashes `[{ a: 'ant', b: 'elephant' }, { c: 'cat' }]`
2. Each Hash is passed into the outer block and assigned the local variable `hash`
3. The `Enumerable#all?` method is called in each Hash key / value pair
4. Each key / value pair is passed into the inner block and assigned the local variables`key` and `value`
5. The comparison operator `==` is then passed to the equation for each value pair
6. The inner block then returns a boolean 
7. The Boolean is then evaluated by the outer block, that will return the hashes which, all key / value pairs that meet the condition



| Line | Action	     | Object	| Side Effect	| Return Value	| Is Return Value Used? |
|:----:|:------------|:-------|:------------|:--------------|:----------------------|
| 164 | Method call `Array#select` | Array of Hashes | None | Output Array with Hashes that are truthy to the select method | no, but shown on line 169
| 164 - 168 | Outer Block Execution | Each Hash that is element of the Array | None | New Selected Array | Yes, by Select method |
| 165 | Method call `Enumerable#all?` | hash | None | Boolean | Yes, by outer block for return value | 
| 165 - 167 | Inner Block Execution | Each Key / Value pair of current Hash | None | Boolean | Yes for final return of all? method |
| 166 | Comparison `==` | Each Key / Value pair of current Hash | None | Boolean | Yes, for each iteration of inner block comparison.

If Instead of #all? we use #any? The evaluation of the first Hash will return true, since The first Key / Value pair meets the conditional `==`. After the first internal block iteration returns true, the block stop executing and the whole method returns true. At the end, #select in the outside block will select all true and return them in a new array.

## Example 7

Sorting nested data structures can be tricky, and it is important to be clear about the level at which you are sorting and which values you want to use to order your collection.

Say for example we have an array of nested arrays which contain numeric strings, and we want to sort the outer array so that the inner arrays are ordered according to the numeric value of the strings they contain. Take, for example, the following 4-element array of arrays.
```ruby
arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]
```
We know that we want to sort at the level of the outer array, but we can't simply call sort on it. When sorting nested arrays it is important to understand that there are two sets of comparison happening:

Each of the inner arrays is compared with the other inner arrays.
The way those arrays are compared is by comparing the elements within them (the documentation refers to this as comparing in an 'element-wise' manner)
Because the elements in the arrays are strings, by calling sort it is string order which will ultimately determine array order:

arr.sort # => [["1", "8", "11"], ["1", "8", "9"], ["2", "12", "15"], ["2", "6", "13"]]
Since strings are compared character by character this doesn't give us a numerical comparison. In order to achieve this we have to perform some transformation on the inner arrays prior to comparing them.
```ruby
arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end
# => [["1", "8", "9"], ["1", "8", "11"], ["2", "6", "13"], ["2", "12", "15"]]
```
So what is happening here?

The key here is understanding that when we carry out transformation within a sort_by block, the transformed elements are what are then used to perform the comparison. As long as what is returned by the block is comparable, we can perform whatever transformation we need to within the block - including nesting other method calls within it.

In this case, each time the top-level block is called, we call map on the sub-array for that iteration, within the map block we call to_i on each string within that particular sub-array, which returns a new array with integers and leaves the original sub-array unmodified. This ends up sorting the outer array by comparing the transformed integers in the inner arrays, which is what we're looking to do, without any side effects.

```ruby
arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end
# => [["1", "8", "9"], ["1", "8", "11"], ["2", "6", "13"], ["2", "12", "15"]]
```

1.- The Array method `Array#sort_by` is called on the multi dimensional array `arr`
2.- Each sub-array is passed into the external block and saved under the local variable `sub_arr`
3.- The `Array#map` method is called on each sub-array
4.- Each sub-array element is passed into the inner block and assigned the local variable `num`
5.- The string method `String#to_i` is called on each element of the sub-array
6.- The inner block returns a new sub array of integers
7.- The Outer block uses the returned array to make the sorting, and then it returns the array of sub-arrays of strings of the original call, but now sorted by the integer value of its elements

| Line | Action	     | Object	| Side Effect	| Return Value	| Is Return Value Used? |
|:----:|:------------|:-------|:------------|:--------------|:----------------------|
| 225 | Method call `Array#sort_by` | arr | none | New array with the sub-arrays sorted by numeric elements | No |
| 225 - 229 | Outer block Execution | Each Sub-Array | None | New array with the sub-arrays sorted by numeric elements | No |
| 226 | Method call `Array#map` | Each Sub-Array | None | New Sub-Array with elements as integers | Yes, by the outer block |
| 226 - 228 | Inner Block Execution | Each Sub-Array Element | None | Sub-Array of Integers | Yes, by `Array#map` method in the inner block |
| 227 | Method call `String#to_i` | Each Sub-Array Element | None | an integer | Yes, By the inner block, to generate an array of integers |

## Example 8

It can be tricky to work with different objects in a nested array if you want to only select nested elements based on certain criteria. For example, take the 2-element array below, where we only want to select integers greater than 13 but strings less than 6 characters. The trick here is that the elements are in a two layer nested array data structure.
```ruby
[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end
# => [[27], ["apple"]]
```

At first you might think to reach for the select method to perform selection, but since we're working with a nested array, that won't work. We first need to access the nested arrays before we can select the value we want. In order to select the specified values in the requirement, we need to first determine if an element is an integer; there are lots of ways to do this, we just went with the imperfect item.to_s.to_i == item test.

One of the main reasons map is used in this example is not only to iterate over the array and access the nested arrays, but to return a new array containing the selected values. If we used each instead we wouldn't have the desired return value, and would need an extra variable to collect the desired results.

```ruby
[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end
# => [[27], ["apple"]]
```

1. The Array method `Array#map` is called on the multi dimensional array `[[8, 13, 27], ['apple', 'banana', 'cantaloupe']]`
2. Each sub-array is passed into the external block and saved under the local variable `arr`
3. The select method is called on each sub-array
4. Each sub-array element is passed into the internal block and saved under the local variable `item`
5. The methods `#to_s` and `#to_i` are called on Each Sub-array element `item` 
6. Each element is then passed into the conditional block. 
7. If the condition `==` (an integer) is true, then `item` is evaluated by the conditional `>` and if true again, then the value of the integer is returned by the internal block to the map method.
8. If the condition `==` is false, then `item` is evaluated by the conditional `<` and if true, then the value is returned by the internal block, and used by the map method

| Line | Action	     | Object	| Side Effect	| Return Value	| Is Return Value Used? |
|:----:|:------------|:-------|:------------|:--------------|:----------------------|
| 270 | Method Call `Array#map` | Array of sub-arrays | none | transformed Array with same size as initial one | No |
| 270 - 278 | Outer Block Execution | Each sub-array | none | new sub-Array | No |
| 271 | Method call `Array#select` | Sub-Array | none | Transformed sub-array with selected values | yes, by map method in the outer block |
| 271 - 277 | Inner Block Execution | Each Elements of Sub-Array | none | Truthy Element | yes by select method for final return |
| 272 | Method call #to_s | `item` element of sub-Array | none | String representation of initial value | yes, by #.to_i method call |
| 272 | Method call #to_i | String representation of `item` element of sub-array | none | integer representation of string (0 if string is not an actual number) | yes, by inner block execution |
| 272 - 276 | Conditional block `if` | `item` element of sub-array | none | `item` that meet condition or nil | Yes, used by the `Array#select` method to return the item or not return it if is falsey (in this case nil) |
| 273 | Comparison `>` | `item` element of sub-array | none | item that meet comparison condition or nil | Yes, by `if` block |
| 275 | Method call `String#size` | `item` element of sub-array | none | integer | Yes, by comparison `<` |
| 275 | Comparison `<` | `item` element of sub-Array | none | item that meet comparison condition or nil | Yes, by `if` block |

## Example 9

This example contains a triple-level nested array. Take your time and try to break down each component. Hint: the top-level array is a 2-element array.

```ruby
[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end
# => [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]
```

The key things to focus on with this example is understanding how each method works and the return value of the block. There are a total of 6 return values since there are 3 methods and 3 blocks (that is, ignoring the return value of this expression: element3.size > 0). By looking at the example, you should notice the first method call within map is each. If we understand each, we know that it doesn't care about the block's return value and it always returns the calling object. Therefore, just by looking at line 2, we can already say that the return value of map will be a new array that matches the value of the calling object. In this example, that's really all the interesting behavior there is as there are no side effects deeper in the code.

```ruby
[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end
# => [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]
```

1. The `Array#map` method is called on the array of arrays `[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]]` 
2. Each sub-array is passed into the external block and saved under the local variable `element1`
3. The `Array#each` method is then called on each sub-array 
4. Each sub-array element is passed into the first internal block and saved under the local variable `Element2`
5. The `Array#partition` method is then called on each element (another array) of each sub-array
6. Each element (most internal array) is passed into the second internal block and saved under the local variable `Element3`
7. The `Array#size` method is then called on each `element3`
8. The comparison `>` is then passed to each element of the sub-array `element3`

| Line | Action	     | Object	| Side Effect	| Return Value	| Is Return Value Used? |
|:----:|:------------|:-------|:------------|:--------------|:----------------------|
| 322 | Method Call `Array#map` | Array of sub-Arrays | none | Transformed New Array (copy of original) | No |
| 322 - 328 | Outer Block Execution | Each Sub-Array | none | new sub-Array | no |
| 323 | Method call `Array#each` | Sub-Array | None | Original Sub-Array | yes, by Map Method in Outer block |
| 323 - 327 | First Inner Block Execution | Each Sub-Array | None | Original Sub-Array | Yes, by Each Method |
| 324 | Method call `Array#partition` | Each element (Sub-Array) of Sub-Array | None | new sub-array element | No |
| 324 - 326 | Second Inner Block Execution | Each element (Sub-Array) of Sub-Array | None | New Element (sub-Array) | yes, by #partition method |
| 325 | Comparison `>` | Each element (Sub-Array) of Sub-Array | None | Sub-Array Element that meet condition | None | Yes, by Second Inner Block |
| 325 | Method call `Array#size` | Each element (Sub-Array) of Sub-Array | None | integer | Yes, by Comparison |


## Example 10

```ruby
[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end
```

1. The `Array#map` method is called on the array of arrays `[[[1, 2], [3, 4]], [5, 6]]` 
2. Each sub-array (of arrays) is passed into the external block and saved under the local variable `arr`
3. The `Array#map` method is then called on each sub-array
4. Each sub-array element is passed into the first internal block and saved under the local variable `El`
5. The `#to_s` method is called on element
6. Then, the `String#size` method is called on `el` (already converted to string)
7. The `==` Comparison is performed on `el`
8. The `if` Block is executed 
9. Based on comparison, if comparison is true `el` is added 1
10. If comparison is false, then the `Array#map` method is called on `el` 
11. The variable `el` is then passed into the second internal block and each element of `el` is saved under the internal variable `n`
12. Each element `n` is then added 1.

Overall the complete block execution should return:

[[[2, 3], [4, 5]], [6, 7]]

```ruby
[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end
```

| Line | Action	     | Object	| Side Effect	| Return Value	| Is Return Value Used? |
|:----:|:------------|:-------|:------------|:--------------|:----------------------|
| 387 | Method Call `Array#map` | Array of sub-Arrays | none | Transformed New Array | No |
| 387 - 397 | Outer Block Execution | Each Sub-Array | none | new sub-Array | no |
| 388 | Method call `array#map` | Element of each Sub-Array | none | Transformed sub-array | Yes by Outer block |
| 388 - 396 | First Inner Block execution | Element of each sub-Array | none | Transformed sub-array | Yes, by `array#map` in inner block |
| 389 | Method call `#to_s` | element of sub-array | None | String representation of sub-array | Yes, by `#size` method |
| 389 | Method call `String#size` | String representation of sub-array element | None | Integer | Yes, used by `==` comparison |
| 389 | Comparison `==` | Integer | none | Boolean | Yes, by conditional `if` |
| 389 - 395 | Conditional block `if` | Sub-Array Element | None | Transformed Element | Yes, by First Inner Block `Array#map` method |
| 390 | Operation `+` | Element of Sub-Array | None | New Value | Yes, by inner block `Array#map` method |
| 392 | Method call `Array#map` | Element of Sub-Array (if is an array) | None | Transformed Array Element of Sub-Array | Yes, by First Inner Block `Array#map` method |
| 392 - 394 | Second Inner Block Execution | Element of Sub-Array | None | No |
| 393 | Operation `+` | Element of Sub-Array | None | New Value | Yes, by First inner block `Array#map` method |

## Example 11

```ruby
[['a', 'b'], ['c', 'd'], ['e', 'f']].map do |sub_arr|
  sub_arr.map do |letter|
    letter.upcase
  end
end
```
1. The `Array#map` method is called on the multidimensional array [['a', 'b'], ['c', 'd'], ['e', 'f']]
2. Each sub-array is passed into the external block and saved under the local variable `sub_arr`
3. The `Array#map` method is then called on each `sub_arr`
4. Each `sub_arr` element is passed into the internal block and saved under the local variable `letter`
5. the `String#upcase` method is then called on each element of each `sub_arr` 
6. `String#upcase` returns the upcased version of the string, and since this is the last line of the block, the block itself returns the upcased letter. Internal `Array#map` then incorporates each returned value into the transformed sub_array
7. The external block returns each transformed `sub_arr`.
8. External `Array#map` then incorporates each returned value into the transformed array

The result is a multidimensional array with all the letters upcased 

```ruby
[['A', 'B'], ['C', 'D'], ['E', 'F']]
```
