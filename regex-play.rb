# playing with some regex


# =~ to test regex matches a string

p /\d\d:\d\d (AM|PM)/ =~ "10:08 PM"

#=>0 = regex matched starting at index 0
# match anywhere in the string for example

p /\d\d:\d\d (AM|PM)/ =~ "where is our 10:08 PM date in the string?"

#=> 13, we matched at 13

night_time = "11:11 PM"
wakey_wakey = "11:11 am"
p "Its time to go sleepy sleepy" if /PM/ =~ night_time

# regex is case sensitve so if we want to match am and AM
p "Wakey Wakey eggs and Bakey" if /AM/i =~ wakey_wakey

# using gsub and regex in a method

def changer_sub(content)

  if content =~ /Superman/
    puts "did you say Superman!!"
    p "no sir, I think you said:"
  end

  p content.gsub( /Superman/, "Batman")
end

changer_sub("Superman is my favorite superhero")
