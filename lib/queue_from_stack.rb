require_relative './stack'

class MyQueue

    attr_reader :s1, :s2

    def initialize
        # end of queue
        @s1 = Stack.new
        # front of queue
        @s2 = Stack.new
    end

    def add value

        # Move all elements from s2 to s1
        while !s1.empty?
            s2.push(s1.pop)
        end

        # Add the new value to s1
        s2.push(value)

        # Move all elements back from s1 to s2
        while !s2.empty?
            s1.push(s2.pop)
        end
    end

    def remove 
        # removes from start of queue (first element added)
        s1.pop
    end


    def peek
        s1.peek
    end

end
