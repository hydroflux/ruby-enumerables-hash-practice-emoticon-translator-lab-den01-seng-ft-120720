# require modules here
require 'pry'
require 'yaml'

def load_library(file)
  # code goes here
  new_library = {}
  
  library = YAML.load_file(file)
  library.map do |key, value|
    new_library[key] = {english: value[0], japanese: value[1]}
  end
  new_library
end

def get_japanese_emoticon(file, english_emoticon)
  # code goes here
  library = load_library(file)
  
end

def get_english_meaning(emoticon)
  # code goes here
  library.key(emoticon)
end