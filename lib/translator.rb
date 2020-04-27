# require modules here
require 'pry'
require 'yaml'


 
def load_library
  # code goes here
  raw_data = YAML::load_file("./lib/emoticons.yml")

  raw_data.reduce({}) do |memo, (key, value)|
    memo[key] = {:english => value[0], 
               :japanese => value[1]}
    memo
  end 
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end