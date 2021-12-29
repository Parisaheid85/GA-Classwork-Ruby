# # dependency
# require "pry"


hackers = [
    "hannah",
    "moya m",
    "nicky",
    "mistyrose",
    "john",

]

# # make directories and files

# hackers
#   |
#   +---hannah
#   |    |
#   |    +---readme.md
#   |
#   +---misty_rose
#   |   |
#   |   +---readme.md
#   |
#   +---moya
#   |   | 
#   |   +----read.md 
#   |


# what do we need to know
# how to create directory
#how to create a file
#how to work with the file system


# binding.pry # pause the program



require 'fileutils' # requiring all fileutil functions
#                  # path a file
 FileUtils.touch("test.txt")
# FileUtils.mkdir('john')


hackers.each do |hacker|
dir_name = hacker.gsub('','_')

# create a folder
FileUtils.mkdir(dir_name)   
# cd dir_name

FileUtils.touch("#{dir_name})/readme.md")
end

