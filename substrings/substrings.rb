def substrings(str, dictionary)

  #create new Hash to store results
  word_count = Hash.new(0)

  #iterate over each item in dictionary and match 
  dictionary.each do |substring|
    match = str.scan(substring).count
    word_count[substring] = match if match > 0
  end

  puts word_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own",
"part","partner","sit"]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
