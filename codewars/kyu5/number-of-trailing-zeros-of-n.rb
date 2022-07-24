def zeros(n)
    #reading through the mathmatical explanation a zero is added each time a factorial multiple of 5 exists
    totalZeros = 0
    while n > 0
      n = n/5.floor
      totalZeros += n
    end
    return totalZeros
end

=begin describe "Basic Tests" do
    it "Should pass basic tests" do
      Test.assert_equals(zeros(0), 0, "Testing with n = 0")
      Test.assert_equals(zeros(6), 1, "Testing with n = 6")
      Test.assert_equals(zeros(30), 7, "Testing with n = 30")
      Test.assert_equals(zeros(100), 24, "Testing with n = 100")
      Test.assert_equals(zeros(1000), 249, "Testing with n = 1000")
      Test.assert_equals(zeros(100000), 24999, "Testing with n = 100000")
      Test.assert_equals(zeros(1000000000), 249999998, "Testing with n = 1000000000")
    end  
  end =end