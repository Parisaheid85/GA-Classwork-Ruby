

def is_palindrome(str) # def palindrome?(str) another way of boolean
    str_without_spaces = str.gsub(' ', ' ')

  if str_without_spaces == str_without_spaces.reverse
end  

puts(is_palindrome('a toyota'))




