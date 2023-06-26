#!/usr/bin/ruby

# f = File.open(ARGV[0], "r")
# content  = f.read
# f.close

content = `xsel -b`
#content.gsub!(/\n\n```(.+?)```/m) {"\n\n<blockquote>#{$1}</blockquote>"}
content.gsub!(/<div class=\"d2\"?>(.+?)<\/div>/m) {"<div class=\"d2\">#{$1.gsub(/^- /m, '')}</div>"} 
#content.gsub!(/<div class=\"d3\"?>(.+?)<\/div>/m) {"<div class=\"d3\">#{$1.gsub(/^- /m, '')}</div>"} 
puts(content)

