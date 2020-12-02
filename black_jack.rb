# Write a program to play a variety of BlackJack.
# The program should ask the user to input two numbers separated by a space, and it should print their sum.
# 
# Here's the catch: 
#  if the sum is greater than 21, return 0, unless one of the numbers is 11. 
#  In such a case, the 11 should be 'converted' to a 1 to prevent the sum from being exceeded.
# 
# For example, given a 11 and 13 as input, the 11 should be 'converted' into a 1 so the total sum will be 14.

p "Enter two number separated by spaces:"

answer = gets.chomp.split
sum=0
if answer[0].to_i + answer[1].to_i > 21
  if answer[0].to_i == 11
    p (answer[1].to_i + 1)
  elsif answer[1].to_i ==11
    p (answer[0].to_i + 1)
  else
    p 0
  end
else
  p (answer[0].to_i + answer[1].to_i )
end