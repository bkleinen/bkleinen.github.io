


all_markdown = Dir.glob("**/*.md")

all_markdown_system_output = `find . -name "*.md" | sort -u`
all_markdown_system = all_markdown_system_output.split("\n").map{|f| f.gsub("./","")}
puts all_markdown.size
puts all_markdown_system.size

diff = all_markdown - all_markdown_system


puts diff

# !\[.*\]\(.*\.jpg\)

  count = 0
  not_found = []
all_markdown.each do | markdown_file|

  content = File.open(markdown_file).read
  image_re = /(\!\[([^\]]*)\]\(([^)^ ]*)( .*)?\))/
  images = content.scan(image_re)

  if images.size > 0
    count = count + 1
    puts
    puts "----- #{markdown_file}"
    puts images.map{ |m| "M: #{m[0]}\n1: #{m[1]}   2: #{m[2]}   3:#{m[3]}"}
    images.each do | m |
      image_link = m[2]
      if /\Ahttp/.match(image_link)
        puts "ext link: #{image_link}"
      else
        puts "int link"
          if image_link[0] == "/"
            local_file = File.join("hugo/static",image_link)
          else
            image_link = image_link.sub("../","")
            local_file = File.join(File.dirname(markdown_file),image_link)
          end
        puts "local_file #{local_file} exists: #{File.exist?(local_file)}"
        not_found << local_file unless File.exist?(local_file)
      end
    end
  end

end
puts "---- local files not found: ----"
puts not_found
puts "found images in #{count} files"
