from_file, to_file = ARGV

indata = open(from_file).read

out_file = open(to_file, 'w')
out_file.write(indata)

puts "Alright, all done."

out_file.close
indata.close
