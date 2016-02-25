def anagrams?(str1, str2)

    if str1.length != str2.length   #verify strings have same length
        return false                #if not return false
    else
        str1.each_char { |a|        #iterate through every character in str1
            
                str2.each_char { |b| #iterate through every character in str2
                    if a == b        #if a match remove the character from str2 and go to next character in str1
                        str2[str2.index(b)] = ""
                        break
                    end
                    if str2.index(b) == str2.length-1  #check to see if gone through all character in str2 w/o making match
                        return false
                    end
                }


        }
    end
    
    
    return true
    
end