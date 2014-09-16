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

# This method applies a hit during a fight
	def hit (damage)
	p_up = rand(charisma)
	if p_up % 9 == 7
		@life += p_up / 4
		puts "[#{self.class} magick powers up #{p_up}!]"
	end
	@life -= damage
	puts "[#{self.class} has died.]" if @life <= 0
	end

	#This method takes one turn in a fight.
	def fight( enemy, weapon )
		if life <= 0
			puts "[#{ self.class } is too dead to fight!]"
			return
		end

		#Attack the opponet
		your_hit = rand(strength + weapon)
		puts "[You hit with #{ your_hit } points of damage!]"
		enemy.hit( your_hit )

		# Retaliation
		p enemy
		if enemy.life > 0
			enemy_hit = rand( enemy.strength + enemy.weapon )
			puts "[Your enemy hit with #{ enemy_hit } points of damage]"
			self.hit ( enemy_hit )
		end
	end


end

class DwemthysArray < Array
	alias _inspect inspect
	def inspect; "#<#{ self.class }#{ _inspect }>"; end
	def method_missing ( meth, *args )
		answer = first.send( meth, *args )
		if first.life <= 0
			shift
			if empty?
				puts "[Whoa. You decimated Dwemthy's Array!]"
			else
				puts "[Get ready #{first.class} has emerged.]"
			end
		end
		answer || 0
	end
end
