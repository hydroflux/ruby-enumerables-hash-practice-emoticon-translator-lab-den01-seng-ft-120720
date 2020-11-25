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
  emotion = file.key(english_emoticon)
  library[emotion][1]
end

def get_english_meaning(file, emoticon)
  # code goes here
  english_meaning = "Sorry, that emoticon was not found"
  
  library = load_library(file)
  library.find do |key, value|
    if library[key][:japanese] == emoticon
      english_meaning = key
    end
  end
  english_meaning
end