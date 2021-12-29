
# switchUp upper to lower and lower to upper

str = "wE CAn hAcK"

def switch_case(str)
 new_str = ""
#loop through
 str.chars.each do |char|
    if char == char.upcase
        new_str += char.downcase
    else
        new_str += char.upcase
    end
end
  

    return new_str
end
