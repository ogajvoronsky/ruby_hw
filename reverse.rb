array = ['aa','bd','cc','dd','ee','ff','gg','hh']
str="abcdefgh"

def reverse(value)

	return value[0] if value.length == 1

	return reverse( value.slice(1..value.size) ) + value.slice(0)
	
end

puts "Array reverse: #{array}"
puts reverse(array)

puts "String reverse: #{str}"
puts reverse(str)

