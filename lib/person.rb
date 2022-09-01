# your code goes here
class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness=(num)
        @happiness = if num > 10
                        10
                    elsif num < 0
                        0
                    else
                        num
                    end
    end
    def hygiene=(num)
        @hygiene = if num > 10
                        10
                    elsif num < 0
                        0
                    else
                        num
                    end
    end
    def happy?
        if @happiness > 7
            true
        else
            false
        end 
    end
    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end
    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end
end