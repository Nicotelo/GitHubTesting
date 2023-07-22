#https://www.tutorialspoint.com/ruby/ruby_operators.htm

puts 5
puts 5.86543
puts -5.86543
puts 5+9
puts 5-9
puts 5*9
puts 5/9
puts 5/9.0
puts 5%9
# puts 2^3 --> creo que esto es binario
puts 2**3
puts 8.divmod(4).first 
puts 8.divmod(4).last 
num = 20
puts ("Este es mi número " + num.to_s) # hay que pasarlo a string con este modo
puts "Este es mi número #{num}"
=begin
 .abs()  --> dará el valor absoluto del número
 .round() --> redondea el número
 .ceil() --> redondea hacia arriba
 .floor() --> redondea hacia abajo
 Math.sqrt(num) --> nos dará la raíz cuadrada
 Math.log(num) --> logaritmo
 puts 8.divmod(4).first  --> divmod divide y crea un array, con el resultado por un lado, el resto por el otro
=end