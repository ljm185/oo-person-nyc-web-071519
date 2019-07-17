# your code goes here

# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name
 
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        # [[10, @happiness].min, 0].max
    end
 
    def happiness=(new_value)
         if new_value > 10
            @happiness = 10
         elsif new_value < 0
            @happiness = 0
         else
            @happiness = new_value
         end
 
    end
 
    def happiness
        @happiness
    end
 
      def hygiene=(hygiene_value)
 
        if hygiene_value > 10
            @hygiene = 10
        elsif hygiene_value < 0
            @hygiene = 0
        else
            @hygiene = hygiene_value
        end
    end
 
    def hygiene
        @hygiene
    end
 
    def clean?
        if hygiene > 7
            return true
        else
            return false
        end
    end
 
    def happy?
        if happiness > 7
            return true
        else
            return false
        end
    end
 
    def get_paid(salary)
        @bank_account += salary
            return “all about the benjamins”
    end
 
    def take_bath
        @hygiene += 4
        self.hygiene=(@hygiene)
        return “♪ Rub-a-dub just relaxing in the tub ♫”
    end
 
    def work_out
        @happiness += 2
        self.happiness=(@happiness)
        @hygiene -= 3
        self.hygiene=(@hygiene)
        return “♪ another one bites the dust ♫”
    end
 
    def call_friend(friend)
        @happiness += 3
        friend.happiness += 3
        self.happiness=(@happiness)
        return “Hi #{friend.name}! It’s #{self.name}. How are you?”
    end
 
    def start_conversation(friend, topic)
        if topic == “politics”
            @happiness -= 2
            friend.happiness -= 2
            self.happiness=(@happiness)
            return “blah blah partisan blah lobbyist”
        elsif topic == “weather”
            @happiness += 1
            friend.happiness += 1
            self.happiness=(@happiness)
            return “blah blah sun blah rain”
        else
            return “blah blah blah blah blah”
        end
    end
 end