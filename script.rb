def caesar_cipher(str, n) 
    alph = ('a'..'z').to_a.join #create array of lowercase alphabet
    str.gsub(/[a-z]/i) do |letter| #replace all letters
        ind = alph.index(letter.downcase) + n #get the index of each letter in the alphabet + n(shift)
        if  ind > 25            #make index wrap if greater than 25
            ind %= 26
        end
        if letter == letter.upcase  #return uppercase letter if letter was originally uppercase
            alph[ind].upcase
        else        #return lowercase letter otherwise
            alph[ind]
        end
    end
end

