class Calculadora #https://www.rubyguides.com/2018/11/attr_accessor/
    attr_accessor :num1, :num2, :operador

    def initialize(num1, num2, op)
        @num1 = num1.to_i # esto es porque gets lo coge todo como string siempre
        @num2 = num2.to_i
        @operator = op

        operacion() # calling to the method operacion
    end

    def sum
        puts "Result : #{@num1 + @num2}"
    end

    def minus
        puts "Result : #{@num1 - @num2}"
    end

    def mult
        puts "Result : #{@num1 * @num2}"
    end

    def div
        puts "Result : #{@num1.divmod(@num2).first}"
        puts "Remainder  : #{@num1%num2}"
    end

    def pot
        puts "Result : #{@num1**@num2}"
    end

    def operacion  # https://www.educative.io/answers/how-to-write-a-switch-statement-in-ruby?utm_campaign=brand_educative&utm_source=google&utm_medium=ppc&utm_content=performance_max&eid=5082902844932096&utm_term=&utm_campaign=%5BNew%5D+Performance+Max&utm_source=adwords&utm_medium=ppc&hsa_acc=5451446008&hsa_cam=18511913007&hsa_grp=&hsa_ad=&hsa_src=x&hsa_tgt=&hsa_kw=&hsa_mt=&hsa_net=adwords&hsa_ver=3&gclid=Cj0KCQjw_O2lBhCFARIsAB0E8B-y3biaDXCLsGPNNPvoW7z4uU4V9LH8hJ1bzENYFhr0gOr182j4z48aAqQXEALw_wcB
        case @operator
        when "+" 
            sum()
        when "-"
            minus()
        when "*"
            mult()
        when "/"
            div()
        when "^"
            pot()
        else
            puts "Invalid operation"
        end
    end
end


puts "Input a number"
num1 = gets.chomp

puts "Input another number"
num2 = gets.chomp

puts "Select an operation (\'+,-,*,/,^\')"
op = gets.chomp

numero = Calculadora.new(num1,num2,op)

