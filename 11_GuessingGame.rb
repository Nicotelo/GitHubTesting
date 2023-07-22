
@arrayOriginal = %w("Hola Adios Manjar Calido Callado Caballero Juego Gerra Cabello Doctrina Doctor Vicio Hacer") #vicio
@palabra =  @arrayOriginal.sample()
@array = @palabra.split('')
@arraysolucion = Array.new(@array.length)

=begin #first trial
def matching intento
    array_int = intento.split('')
    @array.each do |letra|
        array_int.each do |letraintento| 
            if !@array.find_index(letraintento.upcase).nil?
                @arraysolucion[@array.find_index(letraintento)] = letraintento
            end
        end
    end
end
=end
=begin
#second try, it wouldn't match more than the first similar value: Doctor would look like D o c t nil r
def matching intento
    array_int = intento.split('')
    @array.each do |letra|
        array_int.each do |letraintento| 
           if letra.upcase == letraintento.upcase
                @arraysolucion[@array.find_index(letra)] = letraG
               # @array[@array.find_index(letra)] = nil
               # for now let's work with not repeated letters 
               # further down the line : https://stackoverflow.com/questions/8484592/how-to-do-find-index-for-multiple-values-in-a-ruby-array
           end
        end
    end
end
=end

def matching intento
    array_int = intento.split('')
    @array.each_with_index do |letra, index|
        array_int.each do |letraintento| 
           if letra.upcase == letraintento.upcase
                @arraysolucion[index] = letra
               # @array[@array.find_index(letra)] = nil
               # further down the line : https://stackoverflow.com/questions/8484592/how-to-do-find-index-for-multiple-values-in-a-ruby-array
           end
        end
    end
end

puts "Introduzca una palabra" 
loop do
    matching gets.chomp
    if @array == @arraysolucion
        puts "Palabra encontrada : " + @arraysolucion.join('')
        break
    end
    puts "La palabra introducida no es correcta, pero has encontrado algunas letras : #{@arraysolucion}" 
end