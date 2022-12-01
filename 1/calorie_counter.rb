file = 'source.txt'

def calorie_count(input)
  x = File.read(input)
  x = x.split("\n\n").map { |elf| elf.split("\n") }
  x.each { |elf| elf.map! { |snack| snack.to_i } }
  x.max_by { |elf| elf.sum }.sum
end


def top_3_calorie_count(input)
  x = File.read(input)
  x = x.split("\n\n").map { |elf| elf.split("\n") }
  x.each { |elf| elf.map! { |snack| snack.to_i } }
  x.sort_by! { |elf| elf.sum }
  x.last(3).map(&:sum).sum
end

puts calorie_count(file)
puts top_3_calorie_count(file)
