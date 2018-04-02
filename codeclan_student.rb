class CodeclanStudent

def initialize(name, cohort, favourite_language)
@name = name
@cohort = cohort
end

def name
  return @name
end

def cohort
  return @cohort
end

def update_name(name)
  @name = name
end

def update_cohort(cohort)
  @cohort = cohort
end

def talk
  return "I can talk!"
end

def say_favourite_language(favourite_language)
    return "I love #{favourite_language}!"
end

end
