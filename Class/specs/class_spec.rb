require('minitest/autorun')
require('minitest/rg')
require_relative('../class.rb')

class TestClass < MiniTest::Test

def test_student_name
 student = Student.new("Sharon","G16")
 assert_equal("Sharon", student.student_name)
end

def test_student_cohort
  student = Student.new("Sharon", "G16")
  assert_equal("G16", student.student_cohort)
end

def test_student_name
  student = Student.new("Sharon","G16")
  student.set_student_name("Shazzer")
  assert_equal("Shazzer", student.student_name)
end

def test_set_student_cohort
  student = Student.new("Sharon", "G16")
  student.set_student_cohort("G17")
  assert_equal("G17", student.student_cohort)
end

def test_student_can_talk
student = Student.new("Sharon", "G16")
student.student_can_talk
assert_equal("I can talk", student.student_can_talk)
end


def test_student_fav_code
student = Student.new("Sharon", "G16")
assert_equal("I love Ruby", student.student_fav_code("Ruby"))
end











#Class end
end
