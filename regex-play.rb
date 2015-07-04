# playing with some regex


# =~ to test regex matches a string

p /\d\d:\d\d (AM|PM)/ =~ "10:08 PM"

#=>0 = regex matched starting at index 0
# match anywhere in the string for example

p /\d\d:\d\d (AM|PM)/ =~ "where is our 10:08 PM date in the string?"

#=> 13, we matched at 13

night_time = "11:11 PM"
p "Its time to go sleepy sleepy" if /PM/ =~ night_time

