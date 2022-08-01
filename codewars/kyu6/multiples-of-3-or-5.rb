def solution(number)
    return number < 0 ? 0 : (1...number).filter{ |num| num % 3==0 || num % 5==0}.reduce(:+)
end

=begin describe('solution') do 
  
    def _solution(number)
      (1..(number-1)).inject(0) do |sum, n|
        sum + (n % 3 == 0 || n % 5 == 0 ? n : 0)
      end
    end
    
    def test(n, expected)
      expect(solution(n)).to eq(expected), "Expected #{expected}, got #{solution(n)}"
    end
    
    it('basic tests') do
      test(10, 23)
      test(20, 78)
      test(200, 9168)
    end
  
    it('random cases') do 
      (1..10).each do |_| 
        n = rand(-100..1000)
        test(n, _solution(n))
      end
    end
  end =end