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
  end
  emot
end

def get_japanese_emoticon(file_path, english_emoticon)
  # code goes here
  japanese_emoticon = ""
  library = load_library(file_path)
  if library["get_emoticon"].include?(english_emoticon)
    japanese_emoticon = library["get_emoticon"][english_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
  x
end

def get_english_meaning
  # code goes here
end
