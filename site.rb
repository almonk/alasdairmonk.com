#!/usr/bin/env ruby
require "colorize"
require "erb"
require "yaml"
require "html_press"
require "redcarpet"

DATAFILE = "./data/site.yaml"
POSTS_DIR = "./data/posts/"

# Main build process

def build_home
  data = YAML.load(File.read(DATAFILE))
  open("./index.html", "w") { |f|
    f.puts "<!-- This file is auto-generated. Don't touch it. -->"
    f.puts HtmlPress.press(ERB.new(File.read("./templates/index.html.erb")).result(binding))
  }
  puts "✔ Built: ./index.html".green
end

# Build blog

def build_blog
  Dir.open(POSTS_DIR).each do |f|
    build_single_blog_post(f) if f.include? ".md"
  end
end

def build_single_blog_post(post)
  slug = post.sub(".md", ".html")
  md = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
  content = md.render(File.read("#{POSTS_DIR}#{post}"))

  open("./posts/#{slug}", "w+") { |f|
    f.puts "<!-- This file is auto-generated. Don't touch it. -->"
    f.puts HtmlPress.press(ERB.new(File.read("./templates/blog.html.erb")).result(binding))
  }
  puts "✔ Built: ./posts/#{slug}".green
end

# Template methods

def section(title, description = nil)
  return ERB.new(File.read("./templates/partials/section.html.erb")).result(binding)
end

def render(template, collection)
  return ERB.new(File.read("./templates/partials/#{template}.html.erb")).result(binding)
end

build_home
# build_blog
