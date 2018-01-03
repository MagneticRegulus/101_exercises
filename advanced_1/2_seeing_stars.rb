=begin
input : integer >= 7 (n)
output : 8-pointed star in an n x n grid
rules : middle-most line is '*' x n; n must be odd and >= 7
=end

def valid?(n)
  n.odd? && n >= 7
end

def star_arms(pad, edge)
  "#{' ' * edge}*#{' ' * pad}*#{' ' * pad}*#{' ' * edge}"
end

def star(n)
  raise ArgumentError, 'Argument is even or is less than 7' unless valid?(n)
  def_padding = (n - 3) / 2
  arm_length = (n - 1) / 2
  0.upto(arm_length - 1) do |edge|
    puts star_arms(def_padding, edge)
    def_padding -= 1 unless def_padding.zero?
  end
  puts '*' * n
  (arm_length - 1).downto(0) do |edge|
    puts star_arms(def_padding, edge)
    def_padding += 1
  end
end

star(7)
puts
star(9)
