
def leerarchivo1
    File.open("D:/Programacion/RepositoriosGitHub/GitHubTesting/employees.txt", "r") do |file|
    # puts file
    # puts file.read()
    puts file.readchar()  # si pongo file.read, el cursor del archivo estará al final, entonces si pusiera readline o readchar tras un read normal, estoy al final del archivo y me dará error
        puts file.readline()
        puts file.readline()
        puts file.readline()
        puts file.read().include?("Anton") # da false aquí porque el cursor ya está hacia el final
    end
end

def leearchivoarray
    File.open("D:/Programacion/RepositoriosGitHub/GitHubTesting/employees.txt", "r") do |file|
        for line in file.readlines() # readlines nos da todas las líneas
            puts line
        end
    end
end

def asignarvariable
    file = File.open("D:/Programacion/RepositoriosGitHub/GitHubTesting/employees.txt", "r")
    puts file.read
    file.close() #para que no quede abierto en memoria
end

def resettingCursor # https://stackoverflow.com/questions/12918213/reading-greping-a-file-in-ruby-more-than-once
    File.open("D:/Programacion/RepositoriosGitHub/GitHubTesting/employees.txt", "r") do |f|
        puts f.readline   #=> "This is line one\n"
        puts f.readline   #=> "This is line one\n"
        puts f.readline   #=> "This is line one\n"
        f.rewind     #=> 0 
        puts "Rewinded"
        puts f.readline   #=> "This is line one\n"
        f.lineno     #=> 0 
        puts "Pos 1"
        puts f.readline
        puts f.readline
        f.seek 3 # is b char
        puts "Seek"
        puts f.readline
        puts f.readline
        f.rewind
        puts "Rewinded again"
        puts f.readlines[1]  #IO.readlines(".testfile")[0]  --> https://ruby-doc.org/core-2.6.2/File.html
        puts f.close()
        end
    
end

def createfile
    f = File.new("testfile") #https://stackoverflow.com/questions/12918213/reading-greping-a-file-in-ruby-more-than-once
end

def appendInfo
    File.open("D:/Programacion/RepositoriosGitHub/GitHubTesting/employees.txt", "a") do |f| # https://stackoverflow.com/questions/3682359/what-are-the-ruby-file-open-modes-and-options
        f.write("\nOscar, CJ")
    end
end

def OverwriteInfo
    File.open("D:/Programacion/RepositoriosGitHub/GitHubTesting/index.txt", "w") do |f| # https://stackoverflow.com/questions/3682359/what-are-the-ruby-file-open-modes-and-options
        f.write("\nOscar, CJ") # esto sobrescribirá el file entero. Esto es porque básicamente, estoy creando un nuevo file y sobrescribiendo el anterior. Por eso lo he nombrado distinto aquí
    end
end

def writeInfo
    File.open("D:/Programacion/RepositoriosGitHub/GitHubTesting/employees.txt", "r+") do |f| # https://stackoverflow.com/questions/3682359/what-are-the-ruby-file-open-modes-and-options
        f.readline()
        f.write("Overriden\n")  # en donde tengamos el cursor, escribimos este dato
    end
end
writeInfo

#https://ruby-doc.org/core-2.6.2/File.html