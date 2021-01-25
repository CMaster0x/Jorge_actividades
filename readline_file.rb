
def file_opener(file)
  full_text = File.read(file).split
  dictionary = Hash[full_text.uniq.group_by{|element| element}.map{|name,quantity| [name,quantity.count]}]
  puts dictionary
end



file_opener("sample1.txt")
