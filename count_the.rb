# Write a program that: 
#   asks the user to enter a sentence.
#   then finds the number of times 'the' appears in the given string
#   and finally prints, "'the' appeared x times", where x is an Integer

p "Enter a sentence:"
sentence = gets.chomp!
sentence = sentence.split(/[-,\s]+/)
h = Hash.new

  sentence.each { |w|
    if h.has_key?(w)
      h[w] = h[w] + 1
    else
      h[w] = 1
    end
  }

p "the appeared #{h["the"]} times, where #{h["the"]} is an integer" 
