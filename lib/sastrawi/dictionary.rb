module Sastrawi
  class Dictionary
    BASE_WORDS = File.read(Dir.pwd + '/lib/sastrawi/data/kata-dasar.txt').split("\n")
    attr_accessor :words

    def initialize
      @words = []
    end

    def contains word
      @words.include? word
    end

    def count
      @words.count
    end

    def add_words words
      words.each{ |word| add word }
    end

    def add word
      @words << word
    end
  end
end
