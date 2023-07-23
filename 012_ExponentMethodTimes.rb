
def potencia base, power
    result = 1

    power.times do
        result = result * base
    end
    puts result
end


basenum = 2
power = 3

potencia basenum, power