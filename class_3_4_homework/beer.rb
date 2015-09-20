# This program uses loops to output the song "99 Bottles of Beer on the Wall
i=99
until i==0 do
  p1="#{i} bottle"
  if i==1 then p2=" of beer" else p2="s of beer" end
  p3=" on the wall"
  p4="Take one down and pass it around, "
  i-=1
  if i!=0 then p5="#{i} bottle" else p5="no more bottle" end
  if i==1 then p6=" of beer" else p6="s of beer" end
  p7="Go to the store and buy some more, 99 bottles of beer on the wall."
      puts p1+p2+p3+", " +p1+p2+ "."
      puts p4+p5+p6+p3+"."
    if i==0
      puts p5.capitalize+p6+p3 + ", " + p5+p6
      puts p7
    end
end
