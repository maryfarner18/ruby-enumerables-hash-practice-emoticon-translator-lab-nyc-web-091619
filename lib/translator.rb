# require modules here
require "yaml"

def load_library(file)
  temp = YAML.load_file(file)
  
  hash = { "get_meaning" => {}, "get_emoticon" => {}}
  
  temp.each_key do |key|
    hash["get_meaning"][temp[key][1]] = key
    hash["get_emoticon"][temp[key][0]] = temp[key][1]
  end

  hash
end

def get_japanese_emoticon(file, emoti)
  hash = load_library(file)
  {hash[get_emoticon][emoti]? hash[get_emoticon][emoti] : "Sorry, that emoticon isn't recognized!"} 
   
  
end

def get_english_meaning(emoti)
  hash = load_library(file)
  hash[get_emoticon][emoti]
end