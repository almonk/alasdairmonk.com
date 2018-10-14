#!/usr/bin/env ruby
require 'colorize'
require 'erb'
require 'yaml'
require 'html_press'

DATAFILE = "./data/site.yaml"

# Main build process

def build
  data = YAML.load(File.read(DATAFILE))
  open("./index.html", 'w') { |f|
    f.puts "<!-- This file is auto-generated. Don't touch it. -->"
    f.puts HtmlPress.press(ERB.new(File.read("./templates/index.html.erb")).result(binding))
  }
  puts "Site built: ./index.html".green
end

# Template methods

def section(title, description = nil)
  return ERB.new(File.read("./templates/partials/section.html.erb")).result(binding)
end

def render(template, collection)
  return ERB.new(File.read("./templates/partials/#{template}.html.erb")).result(binding)
end

build