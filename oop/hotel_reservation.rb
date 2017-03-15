# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

reservation = HotelReservation.new({customer_name: "John Messina", date: "05-15-2017", room_number: "805"})

# Test ability to change a room number even after a reservation has already been created
reservation.room_number = "519"
result = reservation.room_number
puts "Your method returned:"
puts result
if result == "519"
  puts "PASS!"
else 
  puts "F"
end

# Test the add_a_fridge method
reservation.add_a_fridge
result = reservation.amenities
puts "Your method returned:"
puts result
if result == ["fridge"]
  puts "PASS!"
else
  puts "F"
end

# Test the add_a_crib method
reservation.add_a_crib
result = reservation.amenities
puts "Your method returned:"
puts result
if result == ["fridge", "crib"]
  puts "PASS!"
else
  puts "F"
end

# Test the add_a_custom_amenity method
reservation.add_a_custom_amenity("iron")
result = reservation.amenities
puts "Your method returned:"
puts result
if result == ["fridge", "crib", "iron"]
  puts "PASS!"
else
  puts "F"
end





