require 'rubygems'
require 'yaml'
require 'json'
require 'ap'

Dir.glob('*.yml').each {|yml| File.open("#{yml.gsub('.yml','')}.json", 'w') {|f| f.write({"docs" => YAML.load_file(yml)}.to_json) }}