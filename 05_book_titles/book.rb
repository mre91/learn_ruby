class Book
# write your code here
    def title
        @title
    end

    def title=(str)
        words = str.split(/\W+/)
        add_space = false
        capitalized_title = ''
        capitalize_exceptions = ['a', 'an', 'and', 'in', 'of', 'the']
        first_word = true

        words.each do |word|
            if add_space == true
                capitalized_title += ' '
            end
            if capitalize_exceptions.include?(word) && first_word == false
                capitalized_title += word
            else
                capitalized_title += word.capitalize
            end
            add_space = true
            first_word = false
        end

        @title = capitalized_title
    end
end
