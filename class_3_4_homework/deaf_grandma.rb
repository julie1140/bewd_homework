=begin

Deaf Grandma program:

Write a Deaf Grandma program. Whatever you say to grandma (whatever you type
in), she should respond with HUH?! SPEAK UP, SONNY!, unless you shout it
(type in all capitals).

If you shout, she can hear you (or at least she thinks so) and yells back,
NO, NOT SINCE 1938! To make your program really believable, have grandma shout
a different year each time; maybe any year at random between 1930 and 1950.

You can't stop talking to grandma until you shout BYE.

=end

response="none"
puts "HI SONNY! COME GIVE GRANNIE A HUG AND TELL ME ABOUT YOUR DAY!"

while response!="BYE"
  response=gets.chomp
  if response==response.upcase && response!="BYE"
    puts "NO, NOT SINCE #{rand(1930..1950)}!"
  elsif response!="BYE"
  puts "HUH?! SPEAK UP, SONNY!"
  end
end
