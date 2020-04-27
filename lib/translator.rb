# require modules here
require 'pry'
require 'yaml'


 
def load_library
  # code goes here
    raw_data = YAML::load_file("./lib/emoticons.yml")

    new_arr = raw_data.reduce({}) do |memo, (key, value)|
                 memo[key] = {:english => value[0], 
                              :japanese => value[1]}
                 memo
              end 
    new_arr
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end