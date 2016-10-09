OPTIONS = ['Exit','Rock','Scissovs','Paper']

loop do
	puts 'Make your choice:'
	OPTIONS.each_with_index do |item, index|
	  puts "#{ index } - #{ item }"
	end
	user_choise = gets.to_i
	redo unles (1..3).include?(user_choise)
	computer_choise = rand(1..3)
	puts "Your choise - #{ OPTIONS[user_choise] }"
	puts "Computer's choise - #{ OPTIONS[computer_choise] }"

	if user_choise
end

