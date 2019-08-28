require 'pry'

class Person

    attr_reader :happiness, :name, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    # Writer for happiness where happiness can only be between 0 and 10
    def happiness=(happiness)
        if happiness < 0
            @happiness = 0
        elsif happiness > 10
            @happiness = 10
        else
            @happiness = happiness
        end
    end

    # Writer for hygiene where hygiene can only be between 0 and 10
    def hygiene=(hygiene)
        if hygiene < 0
            @hygiene = 0
        elsif hygiene > 10
            @hygiene = 10
        else
            @hygiene = hygiene
        end
    end

    # will return true if hygiene is greater than 7
    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    # will return true if happiness is greater than 7
    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    # Adds money to bank account 
    def get_paid(bank_account)
        @bank_account += bank_account
        "all about the benjamins"
    end

    # Taking bath will add 4 to hygiene but cannot pass 10
    def take_bath
        self.hygiene = @hygiene + 4
        # Another way to do the above:
        # self.hygiene=(@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"    
    end

    # Working out will add 2 to happiness and decrease 3 from hygiene
    def work_out
        self.happiness = @happiness + 2
        self.hygiene = @hygiene - 3
        "♪ another one bites the dust ♫"
    end

    # Calling friend will add 3 to the happiness of this person and friend
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    # If converstaion is about politics then will decrease 2 from happiness of both people,
    #   if converstaion is about weather then will increase 1 from happiness of both people,
    #   else then no increase nor decrease in happiness of both people.
    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
end

person1 = Person.new("Joe")

# binding.pry
# 0