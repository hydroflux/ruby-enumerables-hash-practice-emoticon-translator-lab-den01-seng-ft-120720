# require modules here
require 'pry'
require 'yaml'

def load_library(file)
  # code goes here
  library = YAML.load_file(file)
  binding.pry
  library
end

def get_japanese_emoticon(library, english_emoticon)
  # code goes here
  library[emotion][1]
end

def get_english_meaning
  # code goes here
end