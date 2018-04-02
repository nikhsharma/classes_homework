require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student.rb')

class TestCodeclanStudent < MiniTest::Test

def setup
@student = CodeclanStudent.new("Nikhil", 5, "Ruby")
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

def test_talking
  assert_equal("I can talk!", @student.talk)
end

def test_say_favourite_language
  assert_equal("I love Ruby!", @student.say_favourite_language("Ruby"))
end

end
