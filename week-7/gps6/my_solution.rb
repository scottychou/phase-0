# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

# class VirusPredictor

#   def initialize(state_of_origin, population_density, population, state_data) #Creates a new instance of the class, State, Pop, PopDensity, and assigns to instance variables
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#     @state_data = state_data
#   end

#   def virus_effects #Runs 2 methods
#     predicted_deaths(@population_density, @population, @state)
#     speed_of_spread(@population_density, @state)
#   end
  
#   def virus_summary()
#     @state_data.each do |state, pop_data|
#       print "#{state}: Density #{pop_data[:population_density]}, Population #{pop_data[:population]}\n"
#     end
#   end

#   private  #class only methods

#   def predicted_deaths(population_density, population, state)
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end

#   def speed_of_spread(population_density, state) #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end


#REFACTORED SOLUTION


class VirusPredictor
  
  #Creates a new instance of the class, State, Pop, PopDensity, and assigns to instance variables
  def initialize(state_of_origin, population_density, population, state_data) 
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @state_data = state_data
  end

  def virus_effects #Runs 2 methods
    predicted_deaths()
    speed_of_spread()
  end
  
  def virus_summary()
    @state_data.each do |state, pop_data|
      print "#{state}: Density #{pop_data[:population_density]}, Population #{pop_data[:population]}\n"
    end
  end

  private  #class only methods

  def predicted_deaths()
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density < 50
      number_of_deaths = (@population * 0.05).floor
    else
      number_of_deaths = ((@population_density/50)/10)*@population.floor 
    end
    
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    else
      speed += 2.5 - (@population_density/50)*0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA)
alaska.virus_effects

alaska.virus_summary




#=======================================================================
# Reflection Section
=begin

    What are the differences between the two different hash syntaxes shown in the state_data file?
    -The first hash syntax is a string, the second is a symbol.  Symbols are unique whereas strings are not.

    What does require_relative do? How is it different from require?
    -require_relative is for relative pathing whereas require is for absolute pathing.
    -I think of it as a way for our file to import another file for usage.

    What are some ways to iterate through a hash?
    -I would go with a do loop, using the .each method for simplicity.  otherwise, while loops are another option for iterating
      though, but it will be significantly longer code.

    When refactoring virus_effects, what stood out to you about the variables, if anything?
    -When I was refactoring, I immediately noticed that the instance variables were passed through as arguments.
    -This completely defeated the purpose of even having instance variables, so I took that out and it helped with readability immensely.

    What concept did you most solidify in this challenge?
    -I'd say the concept I solified the most was my knowledge of classes in general.
    -The usage of instance variables is also another important concept, where and when they can be used, as well as why.

=end