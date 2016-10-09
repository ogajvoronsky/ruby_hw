lilies_count_whole_lake=1
30.times {  lilies_count_whole_lake *= 2 }

puts "Lilies fill the lake! Count = #{lilies_count_whole_lake} "

lilies=2
days=0
while lilies < lilies_count_whole_lake
  days += 1
  lilies *= 2
end

puts "With 2 lilies lake fill in #{days} days"


