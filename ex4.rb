# set the variable cars equal to 100
cars = 100

#set the variable space_in_a_car equal to 4.0
space_in_a_car = 4.0

#set the variable drivers equal to 30
drivers = 30

#set the variable passengers equal to 90
passengers = 90

#set the variable cars_not_driven equal to "cars-drivers"
cars_not_driven = cars - drivers

#et the variable cars_driven equal to drivers
cars_driven = drivers

#set the variable carpool_capacity equal to the product of "cars_driven and space_in_a_car"
carpool_capacity = cars_driven * space_in_a_car

#set the variable average_passengers_per_car equal to the qoutient of passengers and cars_driven
average_passengers_per_car = passengers / cars_driven


puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."
