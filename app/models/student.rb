class Student

attr_accessor :first_name

@@all = []

def initialize(first_name)
    @first_name = first_name
    @@all.push(self)
end

def self.all
    @@all
end

def self.find_student(first_name)
    self.all.select {|student| student.first_name == first_name}
end

def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
end

def tests_total
    BoatingTest.all.select {|test| test.student == self}
end

def tests_passing
   tests_total.select {|test| test.test_status == "passed"}
end


def grade_percentage
    ((tests_passing.length.to_f / tests_total.length.to_f) * 100).to_f
end

end