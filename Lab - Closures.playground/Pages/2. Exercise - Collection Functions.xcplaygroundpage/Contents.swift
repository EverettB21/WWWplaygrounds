/*:
## Exercise - Passing Closures as Arguments and Syntactic Sugar

 Define a function `forwards` that has two `String` arguments, `name1` and `name2`, and returns a `Bool`. Within the definition of the function, print each of the arguments, then return whether or not `name1` is less than `name2`. You can use comparison operators, such as `<` and `>`, to compare alphabetical order in strings.
 */
func forwards(name1: String, name2: String) -> Bool {
    return name1 < name2
}

//:  Create a `[String]` collection using names of your friends and family. Call the collection's `sorted(by:)` function, passing in `forwards` as the argument. Store the result into `sortedCollection1`, then print the result. This should sort your collection alphabetically.
var strings = ["me", "you", "john", "jerry"]
var sorted1 = strings.sorted(by: forwards(name1:name2:))
print(sorted1)
//:  Using your initial collection of unsorted friends and family names, call the collection's `sorted(by:)` function, but pass in your own closure instead of the `forwards` function. The closure should sort the collection in the same way as `forwards`. Be sure to include parameter names, parameter types, and the `return` statement within your closure. Store the result in `sortedCollection2`, then print the result.
sorted1 = strings.sorted { (name1: String, name2: String) -> Bool in
    return name1 < name2
}
print(sorted1)

//:  Similar to the previous exercise, call the collection's `sorted(by:)` function, but remove as much of the unnecessary closure syntax as you can. Store the result in `sortedCollection3`, then print the result.
sorted1 = strings.sorted { $0 < $1 }
print(sorted1)
/*:
[Previous](@previous)  |  page 2 of 3  |  [Next: Exercise - Collection Functions](@next)
 */
