class Question
    attr_accessor :prompt, :answer

    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end

end


p1 = "What color are apples? \n(a)red\n(b)purple\n(c)orange"
p2 = "What color are bananas? \n(a)pink\n(b)red\n(c)yellow"
p3 = "What color are pears? \n(a)yellow\n(b)green\n(c)orange"

questions = [
    Question.new(p1, "a"),
    Question.new(p2, "c"),
    Question.new(p3, "b")
]

def run_test(questions) # here we ask the question and check wether the answer is right or wrong
    answer = ""
    score = 0
    #questions.each do |question|
    for question in questions 
        puts question.prompt
        answer = getanswer()
        if question.answer == answer
            puts "Correct answer"
            score += 1
        else
            puts "Wrong answer"
        end
    end
    puts "You got #{score}/3"
end


def getanswer() # this method is to control the answer, for it to be within range and not be a numeric or something
    puts "Please, input an answer"
    loop do 
        begin
            temp = gets.chomp.to_s
            if (("a".."c").to_a.include?(temp))
                return temp
                #break
            else
                puts "Please, input a valid answer"
            end
        rescue  => e
            puts "Invalid input, please try again"
        end
    end
end


run_test(questions)


#puts ("a".."c").to_a.include?("d")