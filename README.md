# Scrabble Score Calculator ✨

### Running the program
- Download
- Navigate to root directory
- run `irb -r ./lib/scrabble.rb`
- Hooray! Now you're ready to get calculating

### Using the program
In the terminal, create an instance of the Scrabble class
```rb
> game = Scrabble.new
```

#### `score(string)`
Takes a string as an argument and calculates the strings scrabble score. An empty string `('')` or `nil` will return 0.
```rb
> game.score('example')
=> 18

> game.score('')
=> 0

> game.score(nil)
=> 0
```

#### `double_word(string)` & `triple_word(string)`
Also takes a string argument and returns the string's double word and triple word score respectively.
```rb
> game.double_word('example')
=> 36

> game.triple_letter_word('example')
=> 54
```

#### `double_letter(string, letter)` & `triple_letter(string, letter)`
Takes two string arguments: the string and the letter to apply the double or triple letter score.
```rb
> game.double_letter('example', 'x')
=> 26

> game.triple_letter('example', 'e')
=> 20
```

```
# hello world!
```
