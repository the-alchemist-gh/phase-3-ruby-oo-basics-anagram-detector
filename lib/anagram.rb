# Your code goes here!
require "pry"
class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(arrays)
        new_array = arrays.filter do |el|
            @word.chars.sort == el.char.sort
        end 
        puts new_array
    end
end
listen = Anagram.new("listen")
listen.match(%w[enlists google inlets banana])
binding.pry
