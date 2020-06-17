class API
    BASE_URL = "http://hp-api.herokuapp.com/api/characters"
    
    def self.get_characters
        response = RestClient.get(BASE_URL)
        data = JSON.parse(response)
        #binding.pry
    end
end


