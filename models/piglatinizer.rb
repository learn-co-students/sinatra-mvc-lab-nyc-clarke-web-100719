class PigLatinizer
    attr_reader :string

    def initialize
        @string = string
    end

    def piglatinize(word)
        word_split = word.split(" ")
        p word_split
        arr = []
        i = 0
        while i < word_split.length
            j = 0
            str = ""
            while j < word_split[i].length
                if word_split[i][j].downcase =~ /[^aeiou]/
                    str << word_split[i][j]
                elsif word_split[i][j].downcase =~ /[aeiou]/
                    word_split[i].slice!(str)
                    word_split[i] << str
                    break
                end
                j += 1
            end
            if str == ""
            word_split[i] << "way"
            else
            word_split[i] << "ay"
            end
            i += 1
        end

        p word_split.join(" ")
        return word_split.join(" ")
    end

end