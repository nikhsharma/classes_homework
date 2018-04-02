class CodeclanStudent

def initialize(name, cohort)
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

end
