# your code goes here
require 'pry'

class Person
    attr_accessor :bank_account
    attr_reader :happiness, :hygiene, :name

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness= (int)
        if int>10
            @happiness = 10
        elsif int<0
            puts int
            @happiness = 0
        else
            @happiness = int
        end
    end

    def hygiene= (int)
        if int>10
            @hygiene = 10
        elsif int<0
            @hygiene = 0
        else
            @hygiene = int
        end
    end

    def happy?
        @happiness > 7
    end
    
    def clean?
        @hygiene > 7
    end

    def get_paid (pay)
        @bank_account += pay
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend (friend)
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -=2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
