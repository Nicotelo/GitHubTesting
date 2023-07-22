friends = Array["Kevin", "Karen", "Oscar"]
print friends

friends2 = %w(Marta Miguel María)
print "\n" 
print friends2
print friends2[0...1]
friends3 = Array (1..100)
print friends3
=begin
    array[n] --> coge ese index
    array[-n] --> coge el index pero desde atrás --> -1 será la última posición
    array[n, m] = arary[n...m] --> coge un rango de elementos, sin incluir m
    array[n..m] --> coge el rango de elementos, incluyendo m
    array[n] = valor --> asigna ese valor a la posición del index


    Formas de crear arrays:
        array = Array.new
            array[0] = valor
            array[1] = valor2
                si ponemos: 
                    array[0] = "A"
                    array[5] = "B"
                    Todos los que hay entre medias (index 1 al 4) se crean vacíos
        array = Array[valor1, valor2, ..., valor n]

        array = Array (val1..val n) --> crea un array con el rango dado

    array.include? valor --> busca si está este elemento
    array.sort! --> ordena y  cambia al nuevo orden el array
    array.sort --> ordena el array
    array.reverse --> invierte el array
    array.reverse! --> invierte y cambia al nuevo orden el array
=end