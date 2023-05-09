class MyQueue

    attr_reader :queue

    def initialize
        @queue = []
    end

    def add value
        queue.push(value)
    end

    def remove 
        queue.shift(value)
    end

    def peek
        queue.first
    end

end



