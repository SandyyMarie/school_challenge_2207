class School
    attr_reader :hours_in_school_day, 
                :start_time, 
                :student_names
    def initialize(start_time, hours_in_school)
        @hours_in_school_day = hours_in_school
        @start_time = start_time
        @student_names = []
    end

    def add_student_name(name)
        @student_names << name
    end

    def end_time
        (@start_time[0,1].to_i + @hours_in_school_day).to_s + ":" + start_time[2,3].to_s
    end

    def is_full_time?
        @hours_in_school_day > 4
    end

    def standard_student_names
        cap_array = []

        @student_names.each do |student|
            cap_array << student.capitalize
        end
        cap_array

        ## version with .map method
        # @student_names.map {|student| student.capitalize}
    end

    def convert_end_time_to_clock_time
        if (end_time[0..1].to_i > 12)
        (end_time[0..1].to_i - 12).to_s + ":" + end_time[3..4].to_s
        else
         end_time
        end
    end
end
