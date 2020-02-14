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

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  library = load_library(file_path)
  library.each do |type, emotes|
    emotes.each do |library_emoticon|
      if emoticon == library_emoticon

      end
    end
  end
end

def get_english_meaning
  # code goes here
end
