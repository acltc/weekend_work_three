# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)
class Tv
  attr_accessor :power, :volume, :channel
  def initialize(power, volume, channel)
    @power = power
    @volume = volume
    @channel = channel
  end
end

class Remote
  def initialize(tv)
    @tv = tv
  end

  def toggle_power
    if @tv.power == "on"
      @tv.power = "off"
    else
      @tv.power = "on"
    end
  end

  def increment_volume
    @tv.volume += 1
  end

  def decrement_volume
    @tv.volume -= 1
  end

  def set_channel(channel)
    @tv.channel = channel
  end
end

# Driver code
television1 = Tv.new("on", 1, 255)
remote1 = Remote.new(television1)

# Test toggle_power method
remote1.toggle_power
result = television1.power
puts "Your method returned:"
puts result
if result == "off"
  puts "PASS!"
else
  puts "F"
end

# Test increment_volume method
remote1.increment_volume
result = television1.volume
puts "Your method returned:"
puts result
if result == 2
  puts "PASS!"
else
  puts "F"
end

# Test decrement_volume method
remote1.decrement_volume
result = television1.volume
puts "Your method returned:"
puts result
if result == 1
  puts "PASS!"
else 
  puts "F"
end

# Test set_channel method
remote1.set_channel(487)
result = television1.channel
puts "Your method returned:"
puts result
if result == 487
  puts "PASS!"
else
  puts "F"
end


