
lucky_numbers = [4, 8, 15, 16, 23, 42]
=begin
begin
    lucky_numbers["dog"]

rescue ZeroDivisionError
    puts "Division by zero error"
rescue TypeError => e # aquí pasamos el error a una variable
    puts e #y aquí la enseñamos
    #https://rollbar.com/guides/ruby/how-to-handle-exceptions-in-ruby/
    #next #https://stackoverflow.com/questions/2624835/ruby-continue-a-loop-after-catching-an-exception  --> esto solo es válido para loops, si no hay loop no puedo usar next
    # este next es para continuar el programa
rescue #=> e
    #puts e

ensure
    begin
        num = 10/0
    rescue => e
    puts e
    end
end
# para hacer lo que quiero, tengo que usar ensure
# https://stackoverflow.com/questions/46194533/ruby-make-a-script-continue-to-next-statement-in-begin-after-the-exception-and
# https://stackify.com/rescue-exceptions-ruby/
# so, all together:
=end

begin
    lucky_numbers["dog"]
rescue => e
    puts e
ensure
    begin
        num = 10/0
    rescue => e
        puts e
    end
end

    