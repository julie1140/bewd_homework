#Enter admin code here

admincode="1409"

puts "Are you an admin here? Please type Y/N"
admin=gets.chomp

if admin=="Y"
  puts "Please type in the 4 digit passcode"
  code=gets.chomp.to_s.downcase

  if code!=admincode && code!="hint"
 3.times do
  puts "Type in code again"
  code=gets.chomp.to_s.downcase
    end
  end

  elsif code==admincode
    puts "Welcome to the Military!"
  elsif code=="hint"
    puts "The code is #{admincode}. Please type this in."
    code=gets.chomp.to_s
    if code==admincode
      puts "Welcome to the Military!"
      loop=false
    else
      puts "You're a moron."
      loop=false
    end
  else
    puts "Get the fuck out of here!"
    loop=false
  end
end

elsif admin=="N"
  puts "Access denied - Get the fuck out of here!"

end
