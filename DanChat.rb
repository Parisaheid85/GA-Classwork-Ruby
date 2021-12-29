



loop do
# strip will clean the sentence with spaces and all that
  puts ("say sth to Dan")
  input = gets.chomp.strip
  p input
  if input[-1] == "?"
     puts "sure"
  elsif input == ""
     puts "fine. be that way"
  elsif input == input.upcase
    puts "chil out"
  else
    puts "whatever"
  end
end

#   if input[-1] == "?" = if input.end_with? "?" # another inbuilt returning boolean







   