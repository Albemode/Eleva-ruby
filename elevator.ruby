
      #version1
  class Building
  def elevator
    puts "floor " + rand(12).to_s + " is where the elevator user is at, going to that floor"
  end
end

  my_building = Building.new
  my_building.elevator
  
  # this happens when person is in elevator
  # original version of this code written by calvin stephens
  # re-factored if statement version below by my Ruby mentor
  
  puts "what floor of the building do you want?"
  choice = gets.chomp.to_i
  
  floors = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
  
  if choice < 1 || choice > 12
    puts "the elevator doesn't go to floor #{choice}!"
  else
    puts "going to floor #{floors[choice-1]}"
  end



      #version2
  class Lift  
  GROUND_FLOOR = 1  
  TOTAL_FLOOR = 12  
  @@previous_floor =0  
  TRAVEL_TIME = 3  
  DO_DC = 10  
  attr_reader :elevator_on_floor  
  attr_accessor :elevator_target_floor, :new_floor  
  def initialize  
    @elevator_target_floor = GROUND_FLOOR  
  end  
  def call_elevator_to_floor( new_floor,entry_count)  
    if new_floor <= TOTAL_FLOOR  
      puts "strated to floor #{new_floor}"  
      time_to_display = ((new_floor-@@previous_floor)*TRAVEL_TIME).abs  
      puts "time left to reach #{time_to_display} seconds"  
      @@previous_floor = new_floor  
      time_passes(new_floor,time_to_display,$entry_count)  
    else  
     puts 'Invalid floor enter between (1 -10)'  
    end  
  end  
  def time_passes(new_floor,time_to_display,entry_count)  
    if @new_floor != @elevator_target_floor  
     sleep time_to_display.abs  
     $entry_count-=1  
     puts "elevator has arrived at #{new_floor}"  
    else  
      puts "elevator has arrived at your floor"  
    end  
  end  
 end  
 lift = Lift.new  
 puts 'Enter the floor number to reach(1-12)'  
 $entry_count =0  
 while line = gets  
  $entry_count+=1  
  line.chomp!  
    if line      
      puts lift.call_elevator_to_floor( line.to_i,$entry_count )   
     end  
 end  