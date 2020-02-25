class BoatingTest

    attr_accessor :test_name, :test_status
    attr_reader :student, :name, :instructor
    @@all = []

    def initialize(student, test_name, test_status="pending", instructor)
        @student = student
        @test_name = test_name
        @test_status = test_status
        @instructor = instructor
        @@all.push(self)
    end

    def self.all
        @@all
    end


end
