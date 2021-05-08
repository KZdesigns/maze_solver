class MazeSolver
    attr_accessor :maze

    def initialize(file)
        file_lines = File.readlines(file).map(&:chomp)
        line_count = file_lines.count
        @maze = Array.new
        File.readlines(file).map(&:chomp).each do |line|
            @maze << line
        end
    end

    def print_maze
        print @maze
    end

    def print_line
        @maze.each do |line|
            line.each_char.with_index do |char, idx|
                if !"*SE".include?(line[idx])
                    line[idx] = "X"
                end
            end
            puts line
        end
    end
 
end

# new_maze = MazeSolver.new("maze.txt")
# new_maze.print_maze
