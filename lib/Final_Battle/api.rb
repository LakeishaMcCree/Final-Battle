class API
    BASE_URL = "http://hp-api.herokuapp.com/api/characters"
    
    def self.get_characters
        response = RestClient.get(BASE_URL)
        data = JSON.parse(response)
       

        data.each do |potter_character|
            name = potter_character ["name"]
            gender = potter_character ["gender"]
            dateOfBirth = potter_character ["dateOfBirth"]
            house = potter_character ["house"]
            ancestry = potter_character ["ancestry"]
            patronus = potter_character ["patronus"]
            hogwartsStudent = potter_character ["hogwartsStudent"]
            hogwartsStaff = potter_character ["hogwartsStaff"]
            Final_Battle.new(
                name: name, 
                gender: gender, 
                dateOfBirth: dateOfBirth,
                house: house,
                ancestry: ancestry,
                patronus: patronus,
                hogwartsStudent: hogwartsStudent,
                hogwartsStaff: hogwartsStaff
            ) 
                     
        end
    end

    
end



    



