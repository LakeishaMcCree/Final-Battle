class CLI

    def run
        welcome
        main_menu
        nox
    end

    def welcome #complete
        puts "Welcome to the magical world of Harry Potter! Here you will find out about all of the characters introduced to us in this amazing series."
 
        puts "Please hold while we travel on the Hogwarts Express..."
        sleep 2
   
        API.get_characters
        puts "Welcome to Hogsmeade! Your magical journey awaits..."
        sleep 1
    end
    
    
    def main_menu #complete
        puts "Type 'lumos' to shine a light on each characters information."
        puts "Type 'accio' to summon Hogwarts' student information."
        puts "Type 'revelio' to reveal Hogwarts' staff information."
        puts "Type 'portus' to return to the main menu."
        puts "Type 'nox' to exit the program."
        user_input = gets.strip

        if user_input == "lumos"
            get_characters(Final_Battle.all)

        elsif user_input == "accio"
            get_characters(Final_Battle.students)       

        elsif user_input == "revelio"
            get_characters(Final_Battle.staff)
            
        elsif user_input == "portus"
            main_menu

        elsif user_input == "nox"
            nox
            exit
        else
            invalid_input
        
        end
        puts "Type 'portus' to return to the main menu."
        puts "Type 'nox' to exit the program."

        user_input = gets.strip
            if user_input == "portus"
                main_menu
            elsif user_input == "nox"
                exit
            else 
                invalid_input
            end

     end

     def nox
        puts "Heading back to your Muggle World!"
    end
    

    def invalid_input
        puts "Confundo! You seem to be confused. You are being transported back to the main menu."
        sleep 2
        main_menu
    end

     def get_characters(all_characters)#complete
        puts ""
        puts "-------------------"
        all_characters.each.with_index(1) do |character, index|
        puts ""
        puts "Character #{index}."
        puts "Name: #{character.name}"
        puts "Gender: #{character.gender}"
        puts "Date_of_Birth: #{character.dateOfBirth}"
        puts "House: #{character.house}"
        puts "Ancestry: #{character.ancestry}"
        puts "Patronus: #{character.patronus}"
        puts "HogwartsStudent #{character.hogwartsStudent}"
        puts "HogwartsStaff #{character.hogwartsStaff}"
        end
    end
        

    


end

