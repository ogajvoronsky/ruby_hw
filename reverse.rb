a = ['a','d','c','d','e','f','g','h']



def r(v)

	return v[0] if v.length == 1
	s=r(v.last(v.length-1))
	return s + v[v.length-s.length-1]

end


puts r(a)
