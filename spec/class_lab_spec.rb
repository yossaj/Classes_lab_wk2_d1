require('minitest/autorun')
require('minitest/rg')
require_relative('../class_lab')

class TestStudent < MiniTest::Test

  def test_student_created
    student = Student.new("Brian", "E31")
    assert_equal("Brian", student.student_name)
  end

  def test_set_student_name
    student = Student.new("Tim", "E31")
    student.set_student_name('Tom')
    assert_equal('Tom', student.student_name)
  end

  def test_set_cohort
    student = Student.new("Brian", "E21")
    student.set_cohort('E31')
    assert_equal('E31', student.cohort)
  end
end
