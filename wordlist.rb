# code_words = {
# 	'starmonkeys' => 'Phil and Pete, those prickly chancellors of the New Reich',
# 	'catapault' => 'chucky go-go', 'firebomb' => 'Heat-Assisted Living',
# 	'Nigeria' => 'Ny and Jerry\'s Dry Cleaning (with Donuts)',
# 	'Put the kabosh on' => 'Put the cable box on'
# }

# puts code_words.[] ('Nigeria')

# Kernel::print("55,000 starmonkeys Salute!")

# Blocks
kitty_toys = 
[:shape => 'sock', :fabric => 'cashmere'] +
[:shape => 'mouse', :fabric => 'calico'] +
[:shape => 'eggroll', :fabric => 'chenille']

# #sorts toy according to fabric
# puts kitty_toys.sort_by {|toy| toy[:fabric]}

# #sorts toy according to shape and inserts each shaope into sentences
# kitty_toys.sort_by { |toy| toy[:shape] }.each do |toy|
# 	puts "Blixy has a #{ toy[:shape] } made of #{ toy[:fabric] }"
# end

# # Using next 'eggroll'
# non_eggroll = 0
# kitty_toys.each do |toy|
# 	next if toy[:shape] == 'eggroll'
# 	non_eggroll = non_eggroll + 1
# end
# puts non_eggroll

# Using break
kitty_toys.each do |toy|
	break if toy[:fabric] == 'chenille'
	p toy
end