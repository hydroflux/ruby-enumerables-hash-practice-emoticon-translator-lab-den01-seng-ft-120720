# require modules here
require 'pry'
require 'yaml'

def load_library(file)
  # code goes here
  library = YAML.load_file(file)
  library.each do |key, value|
    binding.pry 
  end
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