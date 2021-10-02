all_index_files = Dir.glob("**/index.md")
all_index_files.each do | index_file_name |
  f = File.new(index_file_name)
  dir_name = File.dirname(index_file_name)
  siblings = Dir.glob(File.join(dir_name,"*.md"))

  subdirectories = Dir[File.join(dir_name,"*/")]
  children = siblings.size + subdirectories.size
  if children > 1
    new_name = index_file_name.gsub("index.md","_index.md")
    command =  "git mv #{index_file_name} #{new_name}"
    system(command)

  #  puts "has #{children} children, should be section"
  #  puts "siblings: #{siblings}"
  #  puts "subdirectories: #{subdirectories}"
  end

end
