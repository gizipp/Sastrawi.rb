require 'sastrawi/version'
require 'sastrawi/dictionary'
require 'sastrawi/stemmer'

class String
  include Sastrawi::Stemmer
end
