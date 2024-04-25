class Chandrayaan
  def initialize()
    @commands = ['f', 'r', 'u', 'b', 'l']
    @x,@y,@z = 0,0,0
    @initial_direction = 'N'
    @previous_direction = nil
  end
  def spacecraft_navigation
    @commands.each do |command|
      @x,@y,@z,@initial_direction = find_next_coordinates(@x,@y,@z,@initial_direction,command)
    end
    return @x,@y,@z,@initial_direction
  end

  def find_next_coordinates(x, y, z, direction, operation)
    new_direction = direction
    case operation
    when "f"
      x, y, z = move_forward(x, y, z, direction)
    when "b"
      x, y, z = move_backward(x, y, z, direction)
    when "l"
      direction = turn_left(direction)
    when "r"
      direction = turn_right(direction)
    when "u", "d"
      direction = change_altitude(operation)
    end
    @previous_direction = new_direction unless new_direction == direction
    return x, y, z, direction
  end

  def move_forward(x, y, z, direction)
    case direction
    when 'N', 'S'
      y += 1
    when 'E', 'W'
      x += 1
    when 'U', 'D'
      z += 1
    end
    return x, y, z
  end

  def move_backward(x, y, z, direction)
    case direction
    when 'N', 'S'
      y -= 1
    when 'E', 'W'
      x -= 1
    when 'U', 'D'
      z -= 1
    end
    return x, y, z
  end

  def turn_left(direction)
    case direction
    when 'N'
      'W'
    when 'S'
      'E'
    when 'E'
      'N'
    when 'W'
      'S'
    when 'U'
      up_down_turn_left
    when 'D'
      up_down_turn_left
    else direction
    end
  end

  def up_down_turn_left
    case @previous_direction
    when 'E'
      'N'
    when 'W'
      'S'
    when 'N'
      'W'
    when 'S'
      'E'
    else
      'N' #default direction
    end
  end

  def turn_right(direction)
    case direction
    when 'N'
      'E'
    when 'S'
      'W'
    when 'E'
      'S'
    when 'W'
      'N'
    when 'U'
      up_down_turn_right
    when 'D'
      up_down_turn_right
    else direction
    end
  end

  def up_down_turn_right
    case @previous_direction
    when 'E'
      'S'
    when 'W'
      'N'
    when 'N'
      'E'
    when 'S'
      'W'
    else
      'N' #default direction
    end
  end

  def change_altitude(operation)
    return operation == 'u' ? 'U' : 'D'
  end
end