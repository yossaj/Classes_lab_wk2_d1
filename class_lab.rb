class Student
  attr_reader :student_name, :cohort

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
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
end
