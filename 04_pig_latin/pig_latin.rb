#write your code here
def translate(text)
    constants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
    vowels = ['a', 'e', 'i', 'o', 'u']
    words = text.split(/\W+/)
    translated_text = ''
    add_space = false

    words.each do |w|
        if add_space == true 
            translated_text += ' ' 
        end
        if vowels.include?(w[0].downcase)
            translated_text += w + 'ay'
        elsif constants.include?(w[0].downcase) && constants.include?(w[1].downcase) && constants.include?(w[2].downcase) || constants.include?(w[0].downcase) && w[1..2] == 'qu'
            first_three_chars = w[0..2]
            translated_text += w[3..-1] + first_three_chars + 'ay'
        elsif constants.include?(w[0].downcase) && constants.include?(w[1].downcase) || w[0..1] == 'qu'
            first_two_chars = w[0..1]
            translated_text += w[2..-1] + first_two_chars + 'ay'
        else
            first_char = w[0]
            translated_text += w[1..-1] + first_char + 'ay'
        end
        add_space = true
    end

    return translated_text
end