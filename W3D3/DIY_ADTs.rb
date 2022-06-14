  class Stack
    attr_reader :stack
    def initialize
        @stack = []
    end

    def [](pos)
        @stack[pos]
    end
    
    def push(el)
        @stack.push(el)
    end

    def pop
        @stack.pop
    end

    def peek
      @stack[-1]
    end
  end


  class Queue
    attr_reader :queue

      def initialize
         @queue = [] 
      end

      def [](pos)
        @queue[pos]
      end
      
      def enqueue(el)
        @queue.push(el)
      end

      def dequeue
        @queue.pop
      end

      def peek
        @queue[-1]
      end
    end

    class Map
        attr_reader :map
        def initialize
            @map = Array.new
        end

        def [](pos)
            key, val = pos
            @map[key,val]
          end

        def include?(key)
            @map.each do |row|
                row.each do |ele|
                    return true if ele == key
                end
            end
            false
        end

        def set(key, value)
            if !@map.include?(key)
               @map << [key,value]
            end
          end 
          

        def get(key)
            @map[0]
        end

        def delete(key)
            @map.delete(key)
        end

     #Not sure what this method is supposed to do from the description-I assummed just show/display the map??
        def show
            @map
        end


    end



         

