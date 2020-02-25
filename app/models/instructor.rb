class Instructor

    attr_accessor :test_name, :test_status
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
        BoatingTest.all.select do |test| 
        if test.student == student
            test.test_status = "passed"
        else
            BoatingTest.new(student, test_name, self)
            test.test_status = "passed"
        end
        end
    end

    def fail_student(student, test_name)
        BoatingTest.all.select do |test| 
        if test.student == student
            test.test_status = "failed"
        else
            BoatingTest.new(student, test_name, self)
            test.test_status = "failed"
        end
        end
    end

end
