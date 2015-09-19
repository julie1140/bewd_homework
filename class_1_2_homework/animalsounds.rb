
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

# This isn't part of the assignment.  I just wanted to have some fun.
# Special cases: If user gives an animal that ends in "y" or "x" or "ouse" "ey"

if (animal.reverse[0,1]=='y') && (animal.reverse[1,1]!='e')
    animal2=animal.chomp('y')
    puts "Great choice, #{name}! I love #{animal2}ies!"

elsif animal.reverse[0,2]=='ye'
  puts "Great choice, #{name}! I love #{animal}s!"

elsif animal.reverse[0,1]=='x'
    case animal
    when 'ox'
    puts "Great choice, #{name}! I love oxen!"
  else
      puts "Great choice, #{name}! I love #{animal}es!"
    end

elsif
    animal=="mouse"
    puts "Great choice, #{name}! I love mice!"
else
    puts "Great choice, #{name}! I love #{animal}s!"
  end

# Ask the user what sound their animal makes. Tell the user what they entered

puts "Sorry to bother you again #{name}, but what sound does your animal make?"
sound=gets.chomp.downcase.strip

# Ask the user how many times the animal makes that sound

puts "Your #{animal} goes #{sound} how many times?"
num=gets.chomp.to_i

puts "#{name}'s #{animal} goes" + " #{sound}"+", #{sound}"*(num-1)
