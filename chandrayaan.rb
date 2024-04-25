class Chandrayaan
  def initialize()
    @commands = ['f', 'r', 'u', 'b', 'l']
    @x,@y,@z = 0,0,0
    @initial_direction = 'N'
  end
  def spacecraft_navigation
    @commands.each do |command|
      @x,@y,@z,@initial_direction = find_next_coordinates(@x,@y,@z,@initial_direction,command)
    end
    return @x,@y,@z,@initial_direction
  end

  def find_next_coordinates(x,y,z,direction,operation)
    if direction == 'N'
      if operation == "f"
        y += 1
      elsif operation == 'b'
        y -= 1
      elsif operation == 'l'
        direction = 'W'
      elsif operation == 'r'
        direction = 'E'
      elsif operation == 'u'
        direction = 'U'
      elsif operation == 'd'
        direction = 'D'
      end
      @previous_direction = 'N' if direction != 'N'
    elsif direction == 'S'
      if operation == "f"
        y += 1
      elsif operation == 'b'
        y -= 1
      elsif operation == 'l'
        direction = 'E'
      elsif operation == 'r'
        direction = 'W'
      elsif operation == 'u'
        direction = 'U'
      elsif operation == 'd'
        direction = 'D'
      end
      @previous_direction = 'S' if direction != 'S'
    elsif direction == 'E'
      if operation == "f"
        x += 1
      elsif operation == 'b'
        x -= 1
      elsif operation == 'l'
        direction = 'N'
      elsif operation == 'r'
        direction = 'S'
      elsif operation == 'u'
        direction = 'U'
      elsif operation == 'd'
        direction = 'D'
      end
      @previous_direction = 'E' if direction != 'E'
    elsif direction == 'W'
      if operation == "f"
        x += 1
      elsif operation == 'b'
        x -= 1
      elsif operation == 'l'
        direction = 'S'
      elsif operation == 'r'
        direction = 'N'
      elsif operation == 'u'
        direction = 'U'
      elsif operation == 'd'
        direction = 'D'
      end
      @previous_direction = 'W' if direction != 'W'
    elsif direction == 'U'
      if operation == "f"
        z += 1
      elsif operation == 'b'
        z -= 1
      elsif operation == 'l'
        if @previous_direction == 'E'
          direction = 'N'
        elsif @previous_direction == 'W'
          direction = 'S'
        elsif @previous_direction == 'N'
          direction = 'W'
        elsif @previous_direction == 'S'
          direction = 'E'
        else
          direction = 'N' #default direction
        end
      elsif operation == 'r'
        if @previous_direction == 'E'
          direction = 'S'
        elsif @previous_direction == 'W'
          direction = 'N'
        elsif @previous_direction == 'N'
          direction = 'E'
        elsif @previous_direction == 'S'
          direction = 'W'
        else
          direction = 'N'
        end
      elsif operation == 'u'
        direction = 'U'
      elsif operation == 'd'
        direction = 'D'
      end
      @previous_direction = 'U' if direction != 'U'
    elsif direction == 'D'
      if operation == "f"
        z += 1
      elsif operation == 'b'
        z -= 1
      elsif operation == 'l'
        if @previous_direction == 'E'
          direction = 'N'
        elsif @previous_direction == 'W'
          direction = 'S'
        elsif @previous_direction == 'N'
          direction = 'W'
        elsif @previous_direction == 'S'
          direction = 'E'
        else
          direction = 'N' #default direction
        end
      elsif operation == 'r'
        if @previous_direction == 'E'
          direction = 'S'
        elsif @previous_direction == 'W'
          direction = 'N'
        elsif @previous_direction == 'N'
          direction = 'E'
        elsif @previous_direction == 'S'
          direction = 'W'
        else
          direction = 'N'
        end
      elsif operation == 'u'
        direction = 'U'
      elsif operation == 'd'
        direction = 'D'
      end
      @previous_direction = 'D' if direction != 'D'
    end
    return x,y,z,direction
  end
end