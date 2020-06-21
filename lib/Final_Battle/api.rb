class API
    BASE_URL = "http://hp-api.herokuapp.com/api/characters"
    
    def self.get_characters
        response = RestClient.get(BASE_URL)
        data = JSON.parse(response)
        

        data.each do |potter_characters|
            name = potter_characters["name"]
            gender = potter_characters ["gender"]
            dateOfBirth = potter_characters ["dateOfBirth"]
            house = potter_characters ["house"]
            ancestry = potter_characters ["ancestry"]
            patronus = potter_characters ["patronus"]
            Final_Battle.new(
                name: name, 
                gender: gender, 
                dateOfBirth: dateOfBirth,
                house: house,
                ancestry: ancestry,
                patronus: patronus
            )
            
        end
        


   
    end
end


