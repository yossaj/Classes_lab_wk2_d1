class Student
  attr_reader :student_name, :cohort, :fav_language

  def initialize(student_name, cohort, fav_language)
    @student_name = student_name
    @cohort = cohort
    @fav_language = fav_language
  end

  # def student_name
  #   @student_name
  # end

  def set_student_name(name)
    @student_name = name
  end

  def set_cohort(num)
    @cohort = num
  end

  #
  # def cohort
  #   @cohort
  # end

  def speech
    return "I can talk!"
  end

  def say_favorite_language()
    return "I love #{@fav_language}!"
  end

end
