class  Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
          @prompt = prompt
          @answer = answer
    end
end
def run_test(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.prompt
         answer = gets.chomp()
                if answer == question.answer
                    score += 1
                end


    end
    puts "your score "+ score.to_s + "/" +questions.length().to_s
end
p1="what is color are apples?\n(a)red\n(b)blue\n(c)orange\n(d)white\n"
p2="what is color are bananas?\n(a)red\n(b)yellow\n(c)orange\n(d)white\n"
p3="what is color are water?\n(a)red\n(b)blue\n(c)orange\n(d)white\n"

questions=[
    Question.new(p1, "a"),
    Question.new(p2, "b"),
    Question.new(p3, "b")
]


run_test(questions)