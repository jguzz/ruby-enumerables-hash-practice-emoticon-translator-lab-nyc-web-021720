# require modules here
require "yaml"
require "pry"
def load_library(file_path)
  # code goes here
  emoticons_yml = YAML.load_file(file_path)
  emot = {"get_meaning" => {}, "get_emoticon" => {}}
  emoticons_yml.each do |type, emote|
    emot["get_meaning"][emote[1]] = type
    emot["get_emoticon"][emote[0]] = emote[1]
    binding.pry
  end
  emot
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
