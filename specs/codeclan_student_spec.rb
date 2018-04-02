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

def test_update_name
  @student.update_name("Nik")
  assert_equal("Nik", @student.name)
end

def test_update_cohort
  @student.update_cohort(6)
  assert_equal(6, @student.cohort)
end

end
