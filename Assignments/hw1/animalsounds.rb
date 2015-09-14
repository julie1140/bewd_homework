=begin

Assignment:

Write a program that does the following:
Ask the user for the name of an animal makes an animal sound. Tell the user what they entered.
Ask the user what the animal sound is that their animal makes. Tell the user what they entered.
Put a sentence that describes the animal making their animal sound three times. For example: The duck goes quack quack quack.

=end

# Ask the user for the name of an animal.  Tell the user what they entered.

puts "Hey there! What's your name?"
name=gets.chomp.capitalize

puts "Hi #{name}! Now tell me an animal that makes a sound."
animal=gets.chomp.downcase

puts "Great choice, #{name}! I love #{animal}s!"

# Ask the user what sound their animal makes. Tell the user what they entered

puts "Sorry to bother you again #{name}, but what sound does your animal make?"
sound=gets.chomp.downcase.strip

# Ask the user how many times the animal makes that sound

puts "Your #{animal} goes #{sound} how many times?"
num=gets.chomp.to_i

puts "Haha, oh so your #{animal} goes" + " #{sound}"+", #{sound}"*(num-1)
