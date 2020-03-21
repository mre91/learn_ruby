#write your code here
def echo(text)
    text
end

def shout(text)
    text.upcase
end

def repeat(text='', num_times=2)
    num_times -= 1
    repeated_text = text
    num_times.times {repeated_text += ' ' + text}
    return repeated_text
end

def start_of_word(text, num_of_chars)
    text[0, num_of_chars]
end

def first_word(text)
    text.split.first
end

def titleize(text)
    lowercase_words = %w{a an the and but or over for nor of}
    text.split.each_with_index.map{|x, index| lowercase_words.include?(x) && index > 0 ? x : x.capitalize }.join(" ")
end