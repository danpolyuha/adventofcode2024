#############################################################################
# 1
#############################################################################

lines = File.readlines('input01.txt')
transposed_matrix = lines.map { |line| line.split.map(&:to_i) }.transpose
a1 = transposed_matrix[0].sort
a2 = transposed_matrix[1].sort

puts a1.each_with_index.sum { |item, index| (item - a2[index]).abs }

#############################################################################
# 2
#############################################################################

lines = File.readlines('input01.txt')
transposed_matrix = lines.map { |line| line.split.map(&:to_i) }.transpose
a1 = transposed_matrix[0]
a2 = transposed_matrix[1]

a2_tallied = a2.tally

puts a1.sum { |item| item * (a2_tallied[item] || 0) }
