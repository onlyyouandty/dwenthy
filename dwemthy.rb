# The guts of life force withib Dwemthy's Arrray
class Creature

	#Get a metaclass for this class
	def self.metaclass; class << self; self; end; end

	#Advanced metaprogramming code for the nice, clean traits
	def self.traits(*arr)
		return @traits if arr.empty?

		# 1. Set up accessors for each variable
		attr_accessor *arr

		# 2. Add a new class method for each trait.
		arr.each do |a|
			metaclass.instance_eval do
				define_method( a ) do |val|
				@traits ||=  {}
				@traits[a] =  val
			end
		end
	end

	# 3. For each monster, the 'initialize' method
	# 	should use the default number for each trait.
	class_eval do
		define_method( :initialize ) do
			self.class.traits.eaach do |k,v|
				initialize_variable_set("@#{k}", v)
			end
		end
	end


end

# Creature atrributes read-only
traits :life, :strength, :chrisma, :weapon
end

# class Dragon < Creature
# 	life 1340		# tough scales
# 	strength 451 	# bristling veins
# 	charisma 1020	# toothy smile
# 	weapon 939 		#fire breath
# end
