a = ['aa','bd','cc','dd','ee','ff','gg','hh']
s="abcdefgh"



def r(v)
	
	v = v.split("") if v.class == String 

	return v[0].split if v.length == 1
	s=r(v.last(v.length-1))
	return s.push v[v.length-s.length-1]

end

puts "Array reverse: #{a}"
puts r(a)

puts "String reverse: #{s}"
puts r(s)

