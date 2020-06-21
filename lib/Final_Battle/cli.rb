class CLI
#Greet users "Welcome to the magical world of Harry Potter."
    def run
        puts "Welcome to the magical world of Harry Potter! Here you will find out about all of the characters introduced to us in this amazing series."
#Allow data to load by letting users know that we are traveling to the scene of the Final Battle at Hogwarts. 
        puts "Please hold while we travel on the Hogwarts Express..."
#send the API to get the information    
        API.get_characters
        puts "Welcome to Hogsmeade! Your magical journey awaits..."
        print_main_menu
    end
    #print the main menu to show users options
    def print_main_menu
        puts "Type 'lumos' to shine a light on each characters information."
        puts "Type 'nox' to exit the program."
        main_menu 
    end
    #users will be able to get information about the characters in the final battle at Hogwarts. Get spell names for inputs.
    def main_menu
        user_input = gets.strip

        print_characters
        if user_input == "lumos"
            print_main_menu
        elsif user_input.downcase == "nox"
            goodbye
            exit
        else
            invalid_input
            print_main_menu
        end
     end

     def print_characters
        puts ""
        puts "-------------------"
        Final_Battle.all.each.with_index(1) do |characters, index|
        puts ""
        puts "Character #{index}."
        puts "Name: #{characters.name}"
        puts "Gender: #{characters.gender}"
        puts "Date_of_Birth: #{characters.dateOfBirth}"
        puts "House: #{characters.house}"
        puts "Ancestry: #{characters.ancestry}"
        puts "Patronus: #{characters.patronus}"
        end


    end

#Get spellwords to close out the program
    def goodbye
        puts "Heading back to Muggledom!"
    end
#if a user has an invalid input, get spell words to put here
    def invalid_input
        puts "Confundo! You seem to be confused. Please enter a valid response."
    end


end