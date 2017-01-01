#The code I started with and got stuck.


class Scene
  def enter()
  end
end


class Engine
  def initialize(scene_map)
    @scene_map = scene_map
    puts @scene_map
  end

  def play()
    puts "play #{@scene_map}"
    LaserWeaponArmory
  end
end

class Death < Scene
  def enter()
    put "You are dying"
  end
end

class CentralCorridor < Scene
  def enter()
    puts "you are at the CentralCorridor"
  end
end

class LaserWeaponArmory < Scene
  def enter()
    put "You are at the laser weapon room"
  end
end

class TheBridge < Scene
  def enter()
    puts "You are at the Bridge"
  end
end

class EscapePod < Scene
  def enter()
  end
end


class Map

  def initialize(start_scene)
    @start_scene = start_scene
    puts start_scene
    puts "You have come up against Zork the alien."
    puts "Tell a joke to get passed him."
    opening_scene()
  end

  def next_scene( scene_name)
    room = scene_name.to_s
  puts room
    case room
    when "LaserWeaponArmory"
      Engine.new(@start_scene)
    when "Death"

    else
      puts "Something went wrong"
    end
  end

  def opening_scene()
    print "> "
    joke = $stdin.gets.chomp
    puts joke
    if joke.include?("chicken")
      next_scene(LaserWeaponArmory)

    else
      next_scene(Death)

    end
  end
end


a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()
