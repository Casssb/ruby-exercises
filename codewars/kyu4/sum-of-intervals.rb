def sum_of_intervals(intervals)
    #variable for total
    #sort array list by first value
    #loop through matrix, if [0][i] < [i][0] add numbers of first index and so on
    #if subsequent array first index is less that current array second index use min to find lowest value
    #could also just use a set for this
    #or create a version of a set by just testing each number versus the total array to see if it's already included then returning .length
    non_dupe_number = []
    intervals.each do |sub_array|
      for i in sub_array[0]...sub_array[1]
        if !non_dupe_number.include?(i)
          non_dupe_number.push(i)
        end
      end
    end
    return non_dupe_number.length
end

=begin describe("Fixed tests") do
    it("Tests") do
      Test.assert_equals(sum_of_intervals([[1, 5]]), 4)
      Test.assert_equals(sum_of_intervals([[1, 5], [6, 10]]), 8)
      Test.assert_equals(sum_of_intervals([[1, 5], [1, 5]]), 4)
      Test.assert_equals(sum_of_intervals([[1, 4], [7, 10], [3, 5]]), 7)
    end
  end
  
  def solution(a)
    a = a.sort{|x, y| x[0] - y[0] != 0 ? x[0] <=> y[0] : x[1] <=> y[1]}
    r, last = 0, a[0][0]
    for x, y in a do
      next if y <= last
      m = [x, last].max
      r += y - m
      last = y
    end
    r
  end
  
  describe("Random tests") do
    it("Tests") do
      100.times do
        a, n = [], rand(1..20)
        n.times do
          x = rand(-500..499)
          y = rand(x+1..500)
          a << [x, y]
        end
        result = solution(a)
        Test.assert_equals(sum_of_intervals(a), result)
      end
    end
  end =end