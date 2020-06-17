class Final_Battle
    attr_accessor :name, :gender, :date_of_birth, :house, :ancestry, :patronus

    def initialize(name:, gender:, date_of_birth:, house:, ancestry:, patronus:)
        self.name = name
        self.gender = gender
        self.date_of_birth = date
        self.house = house
        self.ancestry = ancestry
        self.patronus = patronus

        self.save
    end

    def save
        @@all << self
    end
end

