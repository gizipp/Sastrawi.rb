module Sastrawi
  module Stemmer
    def stem_word
      if self.is_plural?
        return self.stem_plural_word
      else
        return self.stem_singular_word
      end
    end

    def is_plural?
      matches = self.match('^(.*)-(ku|mu|nya|lah|kah|tah|pun)$')
      return matches[1].include?('-') if matches

      self.include?('-')
    end

    def stem_plural_word
      matches = self.match('^(.*)-(.*)$')
      return self if !matches

      words = [matches[1], matches[2]]

      suffix = words[1]
      suffixes = ['ku', 'mu', 'nya', 'lah', 'kah', 'tah', 'pun']
      matches = words[0].match('^(.*)-(.*)$')

      if suffixes.include?(suffix) && matches
        words[0] = matches[1]
        words[1] = matches[2] + '-' + suffix
      end

      root_word_1 = self.stem_singular_word(words[0])
      root_word_2 = self.stem_singular_word(words[1])

      if Sastrawi::Dictionary.contains(words[1]) && root_word_2 == words[1]
        root_word_2 = self.stem_singular_word('me' + words[1])
      end

      if root_word_1 == root_word_2
        return root_word_1
      else
        return self
      end
    end

    def stem_singular_word
      return self
    end
  end
end
