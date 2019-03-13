# Working With Blocks. Describe what a Block do

## This is how a block of code needs to be described at the Exam

- What is the type of action being performed (method call, block, conditional, etc..)?
- What is the object that action is being performed on?
- What is the side-effect of that action (e.g. output or destructive action)?
- What is the return value of that action?
- Is the return value used by whatever instigated the action?

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
| 14	 | method call `Array#each`	| The outer array |	None |	The calling object	| No, but shown on line 19 |
| 14-16	| block execution	| Each sub-array |	None |	nil |	No |
| 15 |	method call `Array#first` |	Each sub-array |	None |	Element at index 0 of sub-array |	Yes, used by puts |
| 15	| method call `puts`	| Element at index 0 of sub-array |	Outputs string representation of an Integer	| nil |	Yes, used to determine return value of block |

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
| 40    | Method call `Array#map` | The outer multidimensional array | None | New Array `[nil, nil]` | No, but shown on line 45 |
| 40 - 42 | Block Execution | Each Sub-Array | None  | Nil | No |
| 41 | Method call `Array#first` | Each Inner array | None | First Element of each Inner Array | Yes, by the `puts` method |
| 41 | Method call `puts` | Each Inner Array initial value | Produces a string representation of the value | nil | Yes, to determine return value of the block | 

## Example 3