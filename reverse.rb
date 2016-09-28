a = ['aa','bd','cc','dd','ee','ff','gg','hh']
#a="abcdefgh"



def r(v)
	n=v
	n = v.split("") if v.class == String 

	return n[0].split if n.length == 1
	s=r(n.last(n.length-1))
	return s.push n[n.length-s.length-1]

end


puts r(a)
