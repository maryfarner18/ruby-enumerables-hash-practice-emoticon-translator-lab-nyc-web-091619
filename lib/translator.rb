# require modules here
require "yaml"

def load_library(file)
  hash = { "get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(file)
  puts hash
  hash
end

def get_japanese_emoticon(emoti)
 
end

def get_english_meaning(emoti)
  # code goes here
end