

# You are a sheep farmer, and are plagued by wolves which pretend to be sheep. Fortunately, you are good at spotting them.

# Warn the sheep in front of the wolf that it is about to be eaten. Remember that you are standing at the end of the queue/array: [sheep, sheep, sheep, sheep, sheep, wolf, sheep, sheep] (YOU ARE HERE AT THE FRONT OF THE QUEUE)

# If the wolf is the closest animal to you, return "Pls go away and stop eating my sheep". Otherwise, return "Oi! Sheep number N! You are about to be eaten by a wolf!" where N is the sheep's position in the queue.

# Note: there will always be exactly one wolf in the array.

# Examples:
# warnTheSheep(["sheep", "wolf", "sheep"]) //=> "Oi! Sheep number 1! You are about to be eaten by a wolf!"
# warnTheSheep(["sheep", "sheep", "wolf"]) //=> "Pls go away and stop eating my sheep"
# warnTheSheep(["sheep", "wolf", "sheep", "sheep", "sheep", "sheep", "sheep"]) //=> "Oi! Sheep number 5! You are about to be eaten by a wolf!"

#   we have an array of sheeps and one wolf

    sheeps = ["sheep", "wolf", "sheep", "sheep", "sheep", "sheep", "sheep"]

# we have to shift the wolf in the braqet and change the puts    

def warn_the_sheep(arr)
    if arr.last == "wolf"
        return "Pls go away and stop eating my sheep"
    else 
        sheep_number = arr.length - arr.index("wolf") - 1; 
        return "Oi! Sheep number #{sheep_number}! You are about to be eaten by a wolf!"  
    end
end


puts warn_the_sheep
requiure 'pry'