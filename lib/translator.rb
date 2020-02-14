# require modules here
require "yaml"
require "pry"
def load_library(file_path)
  # code goes here
  emoticons_yml = YAML.load_file(file_path)
  emot = {"get_meaning" => {}, "get_emoticon" => {}}
  emoticons_yml.each do |i, v|
    emot["get_meaning"][v[1]] = i
    emot[get_emoticon][v[0]]
  end
  emot
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
