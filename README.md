### Substringsd

A method that takes a string as the first argument and then an array of valid substrings as the second argument. It returns a hash listing each substring (case insensitive) that was found in the original string and how many times it was found. It can handle multiple words.

```rb
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low", "own","part","partner","sit"]

substrings("below", dictionary)

{ "below" => 1, "low" => 1 }
```
