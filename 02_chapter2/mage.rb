class Mage
	attr_accessor :name, :spell
	def enchant(target)
		puts "#{@name} casts #{@spell} on #{target.name}!"
	end
end
merlin = Mage.new
merlin.name = "Merlin"
morgana = Mage.new
morgana.name = "Morgana"
morgana.spell = "Shrink"
morgana.enchant(merlin)