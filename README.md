# Sastrawi.rb

Sastrawi.rb (Indonesian Language Ruby Stemmer) is a simple ruby gem which allows you to reduce inflected words in Indonesian Language (Bahasa Indonesia) to their base form (stem).

This is Ruby (on going) porting of the original Sastrawi project written in PHP (credits goes to the original author and contributors of Sastrawi PHP).

## Install

```gem install sastrawi```

## Usage
```
require 'sastrawi'

Sastrawi.stem('Mereka meniru-nirukannya') # -> 'mereka tiru'
"Mereka meniru-nirukannya".stem           # -> 'mereka tiru'

sentence = 'Perekonomian Indonesia sedang dalam pertumbuhan yang membanggakan'
output   = Sastrawi.stem(sentence)

puts output
# ekonomi indonesia sedang dalam tumbuh yang bangga
```

## Demo

Live demo URL : https://sastrawi-rb.herokuapp.com/

Repository : https://github.com/gizipp/sastrawi-rb

## License

MIT License (MIT).

## More About Sastrawi

- [Sastrawi PHP Repository page](https://github.com/sastrawi/sastrawi)

## Status

Initiated.

DO NOT USE THIS GEM.
