class Final_Battle
    
    attr_accessor :name, :gender, :dateOfBirth, :house, :ancestry, :patronus, :hogwartsStudent, :hogwartsStaff

    @@all = []

    def initialize(name:, gender:, dateOfBirth:, house:, ancestry:, patronus:, hogwartsStudent:, hogwartsStaff:)
        self.name = name
        self.gender = gender
        self.dateOfBirth = dateOfBirth
        self.house = house
        self.ancestry = ancestry
        self.patronus = patronus
        self.hogwartsStudent = hogwartsStudent
        self.hogwartsStaff = hogwartsStaff
        self.save
    end

    def self.all
        @@all
    end
    
    def save
        @@all << self
    end

    def self.students
        @@all.select do |character|
            character.hogwartsStudent
        end
    end
    
    def self.staff
        @@all.select do |character|
            character.hogwartsStaff
        end
    end
    
end

