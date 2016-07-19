###
Style Guide: https://github.com/polarmobile/coffeescript-style-guide
###

flatten = (xs) ->
  # Flatten a nested list of objects.
  empty = xs.length < 1
  if empty
    return []
  head = xs[0]
  tail = xs[1..]
  if head instanceof Array
    return flatten(head.concat tail)
  return [head].concat flatten tail


# Returns [ 2, 9, 2, 1, 13, 2, 8, 2, 6 ]
console.log flatten [2, 9, [2, 1, 13, 2], 8, [2, 6]]
