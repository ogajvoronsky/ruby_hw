s="dfsfdsffgggggrewruuuuhff"

def Compress ( s )

point = 0
counter = 1
res=""

begin 
   if res[res.length-1] == s[point] then
        counter += 1
   elsif
        if counter > 1 then
          res.concat(counter.to_s)
          counter=1
	  res.concat(s[point]) if s[point] != nil
        elsif
          res.concat(s[point])
        end
   end
  point +=1
end while point <= s.length 

 return res

end

puts s
puts Compress(s)

