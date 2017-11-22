# require "1_madlibs.txt"

def read_file(file)
  open(file) { |file| file.read }
end

madlib = read_file("1_madlibs.txt")
ary = madlib.split('BLANK')
