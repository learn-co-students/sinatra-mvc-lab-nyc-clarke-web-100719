class PigLatinizer

    def piglatinize(input)

    array = input.split(" ")
    array = array.map{|word| pig_word(word)}.join(" ")

    end


    def pig_word(input)
        mod_input = input.downcase
        vow = ['a','e','i','o','u']
        if vow.include?(mod_input[0])
            input + "way"
        elsif !vow.include?(mod_input[0]) && !vow.include?(mod_input[1]) && !vow.include?(mod_input[2])
            input[3..-1] +input[0]+input[1]+input[2] + "ay"
        elsif !vow.include?(mod_input[0]) && !vow.include?(mod_input[1])
            input[2..-1] +input[0]+input[1]+ "ay"
        else
            input[1..-1] +input[0]+ "ay"
        end
    end

end