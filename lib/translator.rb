# require modules here
require 'pry'
require 'yaml'


 
def load_library(path)
  # code goes here
    raw_data = YAML::load_file(path)

    new_arr = raw_data.reduce({}) do |memo, (key, value)|
                 memo[key] = {:english => value[0], 
                              :japanese => value[1]}
                 memo
              end 
    new_arr
end

def get_japanese_emoticon(file, emoticon)
  # code goes here
  data = load_library(file)
  data.reduce(nil) do |memo, (key, value)|
    if value['english'] == emoticon
      return value[:japanese]
    end 
  end 
  "Sorry, that emoticon was not found"
end

def get_english_meaning(file, emoticon)
  # code goes here
   data = load_library(file)
  data.reduce(nil) do |memo, (key, value)|
    if value['japanese'] == emoticon
      return value[:english]
    end 
  end 
  "Sorry, that emoticon was not found"
end