num = 10

def repetir numero
    segundo = 0
    numero.times do 
        if (segundo >= numero*75/100)
            puts "Tick"
            sleep 1
            puts "Tock"
            sleep 1
        else
            sleep 1
            segundo += 1
        end
    end
end
# step es para arrays, cuando queremos en un for tener un salto de más de 1 
# https://stackoverflow.com/questions/13021812/looping-through-an-array-with-step
repetir num
