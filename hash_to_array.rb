

# (3) Write a program that collects 5 keys and 5 values from the user, and stores them in a hash. 
# Write a function that accepts the hash as optional parameters and prints out an array of keys and an array of values. 
# Call the function within your program so you know it works. 

# Call this program hash_to_array.rb.


def ask(question)
    print question
    answer = gets.chomp 
    return answer
end
  
def collects #collects 5 keys and 5 values from the user, and stores them in a hash. 
    new_hash = {}
    for i in 0..4
    key = ask("Enter a key: ")
    value = ask("Enter a value: ")
    new_hash[key] = value
end
    return new_hash 
end
  
def array(new_hash)
    puts "Array of keys: #{new_hash.keys},\nArray of values: #{new_hash.values}"
end
  
new_hash = collects
array(new_hash)


# (Question: Can you find online information on Ruby hash methods that will help with this function?)  
# There's a couple of articles in stackoverflow
# https://stackoverflow.com/questions/9560335/ruby-hash-to-array-of-values/9560378