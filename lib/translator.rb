# require modules here
require 'pry'
require 'yaml'

def load_library(file)
  # code goes here
  new_library = {}
  
  library = YAML.load_file(file)
  library.map do |key, value|
    new_library[key.to_sym] = {english_emoticon: value[0], japanese_emoticon: value[1]}
  end
  new_library
end

def get_japanese_emoticon(library, english_emoticon)
  # code goes here
  emotion = library.key(english_emoticon)
  library[emotion][1]
end

def get_english_meaning(emoticon)
  # code goes here
  library.key(emoticon)
end