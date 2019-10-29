class PigLatinizer
    @@vowels = ["a","e","i","o","u"]

    def to_words_array(words)
        words.split(" ")
    end

    def first_vowel(word)
        word.split("").find_index {|letter| @@vowels.include?(letter)}
    end

    def piglatinize(words)
        new_arr = []
        to_words_array(words).each do |word|
            if @@vowels.include?(word[0].downcase)
                new_arr << word + "way"
            else
                new_arr << word[first_vowel(word)..-1] + word[0...first_vowel(word)] + "ay"   
            end
        end
        new_arr.join(" ")
    end
    
end
