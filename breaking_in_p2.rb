#Enter admin code here

admincode="1409"

puts "Are you an admin here? Please type Y/N"
admin=gets.chomp

if admin=="Y"
  puts "Please type in the 4 digit passcode"
  code=gets.chomp.to_s.downcase

while code!=admincode && code!="hint"
  puts "Type in code again"
  code=gets.chomp.to_s.downcase
end

  if code==admincode
    puts "Welcome to the Military!"
  elsif code=="hint"
    puts "The code is #{admincode}. Please type this in."
    code=gets.chomp.to_s
    if code==admincode
      puts "Welcome to the Military!"
    else
      puts "You're a moron."
    end
  else
    puts "Get the fuck out of here!"
  end

elsif admin=="N"
  puts "Access denied - Get the fuck out of here!"

end
