# (2) Write a program hangman.rb that contains a function called hangman.
# The function's parameters are a word and an array of letters. 
# It returns a string showing the letters that have been guessed. 
# Call the function from within your program so that you know that it works.



def hangman(word, array) #that contains a function called hangman.
    string = ""
    for letter in word.split("")
      array.include?(letter) ? string += letter : string += "_"
    end
    puts string
  end

  hangman("president",["p","e","d"])

  hangman("competition",["o","t"])