s='fff2444rrrrrrrrrrrrrrrrrrrfgdbbb'
def Compress ( s )

point = 0
counter = 1
res=''

begin
   if res[res.length-1] == s[point] then
        counter += 1
   else
        if counter > 1 && !(('0'..'9').include?(s[point-1]))  then
          res.concat(counter.to_s)
          counter=1
	        res.concat(s[point]) if s[point] != nil
        else
          if ('0'..'9') === s[point-1] then
            res.insert(res.length-1,' ')
            res.concat(counter.to_s)
            counter=1
          end
        end
   end
          if s[point] != nil && res[res.length-1] != s[point] then res.concat(s[point])
          end

  point += 1
end while point <= s.length 

 return res

end

puts s
puts Compress(s)
