require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student.rb')

class TestCodeclanStudent < MiniTest::Test

def setup
@student = CodeclanStudent.new("Nikhil", 5)
end

def test_student_name
  assert_equal("Nikhil", @student.name)
end

def test_student_cohort
  assert_equal(5, @student.cohort)
end

end
