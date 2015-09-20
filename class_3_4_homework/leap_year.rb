=begin
Write a program which will ask for a starting year and an ending year, and then
puts all of the leap years between them (and including them, if they are also
leap years).

Leap years are years divisible by four (like 1984 and 2004). However, years
divisible by 100 are not leap years (such as 1800 and 1900) unless they are
divisible by 400 (like 1600 and 2000, which were in fact leap years).
=end

year_start=0
year_end=0

puts "Please enter a starting year."
year_start=gets.chomp.to_i
puts "Now enter an ending year."
year_end=gets.chomp.to_i

puts "Leap years between #{year_start} and #{year_end}:"
for i in year_start..year_end
  puts i if i%4==0 && i%100!=0 or i%4==0 && i%400==0
end
