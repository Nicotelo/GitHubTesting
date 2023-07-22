=begin
puts "Introduzca numero"
num = gets.chomp()
puts num
=end

puts "Enter your name"
name = gets
puts "Hello #{name}, thank you" # con el gets, coge el dato y también el intro
p name # con esto podemos ver exactamente lo que coge
#con el chomp, lo que hace es coger el dato y no recoge el intro

puts "Enter your name again"
name = gets.chomp
puts "Hello #{name}, thank you without intro"
p name 