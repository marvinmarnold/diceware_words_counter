require 'csv'
words = CSV.read('wordlist.csv', :col_sep => "\t", :quote_char => "\x00")

puts "Analyzing " + words.length.to_s + " words."
puts "The average length is " + ((words.map { |x| x.last.size }).inject(0.0) { |sum, x| sum + x } / words.length).to_s
