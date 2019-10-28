class PigLatinizer
    attr_accessor :reader

    def piglatinize(phrase)
        phrase_array = phrase.split(" ")
        phrase_array = phrase_array.map { |word| piglatinize_word(word) }
        phrase_array.join(" ")
    end

    def piglatinize_word(word)
        vowels = ['a', 'e', 'i', 'o', 'u']
        small_word = word.downcase
        if vowels.include?(small_word[0])
            word + "way"
        elsif !vowels.include?(small_word[0]) && !vowels.include?(small_word[1]) && !vowels.include?(small_word[2])
            ayword = word[0] + word[1] + word[2] + "ay"
            word[3..-1] + ayword
        elsif !vowels.include?(small_word[0]) && !vowels.include?(small_word[1])
            ayword = word[0] + word[1] + "ay"
            word[2..-1] + ayword
        else
            ayword = word[0] + "ay"
            word[1..-1] + ayword
        end
    end

end