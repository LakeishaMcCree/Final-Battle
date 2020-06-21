class Final_Battle
    
    attr_accessor :name, :gender, :dateOfBirth, :house, :ancestry, :patronus

    @@all = []

    def initialize(name:, gender:, dateOfBirth:, house:, ancestry:, patronus:)
        self.name = name
        self.gender = gender
        self.dateOfBirth = dateOfBirth
        self.house = house
        self.ancestry = ancestry
        self.patronus = patronus
        self.save
    end

    def self.all
        @@all
    end
    
    def save
        @@all << self
    end
end

