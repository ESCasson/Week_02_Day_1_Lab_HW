class Student

def initialize(input_student_name,input_student_cohort)

@student_name = input_student_name
@student_cohort = input_student_cohort

end

def student_name
  return @student_name
end

def student_cohort
  return @student_cohort
end

def set_student_name(change_name)
 @student_name = change_name
end


def set_student_cohort(change_cohort)
  @student_cohort = change_cohort
end

def student_can_talk
  return "I can talk"
end

def student_fav_code(fav_code)
return "I love " + fav_code
end

#class end
end
