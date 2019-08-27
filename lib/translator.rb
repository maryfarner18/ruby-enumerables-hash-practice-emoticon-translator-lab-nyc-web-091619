# require modules here
require "yaml"

def load_library(file)
  temp = YAML.load_file(file)
  
  hash = { "get_meaning" => {}, "get_emoticon" => {}}
  
  temp.each_key do |key|
    hash["get_meaning"][temp[key][1]] = key
    hash["get_emoticon"][key] = temp[key][0]
  end

  hash
end

def get_japanese_emoticon(emoti)
 
end

def get_english_meaning(emoti)
  # code goes here
end