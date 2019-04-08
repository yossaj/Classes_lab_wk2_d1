require('minitest/autorun')
require('minitest/rg')
require_relative('../class_lab')

class TestStudent < MiniTest::Test

  def test_student_created
    student = Student.new("Brian", "E31", "Ruby")
    assert_equal("Brian", student.student_name)
  end

  def test_set_student_name
    student = Student.new("Tim", "E31", "Ruby")
    student.set_student_name('Tom')
    assert_equal('Tom', student.student_name)
  end

  def test_set_cohort
    student = Student.new("Brian", "E21", "Ruby")
    student.set_cohort('E31')
    assert_equal('E31', student.cohort)
  end

  def test_speech
    student = Student.new("Brian", "E21", "Ruby")
    student.speech
    assert_equal('I can talk!', student.speech)
  end

  def test_say_favorite_language
    student = Student.new("Bill", "E41", "Ruby")
    assert_equal('I love Ruby!', student.say_favorite_language)
  end
end
