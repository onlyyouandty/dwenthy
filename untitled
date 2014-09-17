# # the_count = [1, 2, 3, 4, 5]
# # fruits = ['apples', 'oranges', 'pears','apricots']
# # change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# # for number in the_count
# # 	puts "This is count #{number}"
# # end

# # fruits.each do |fruit|
# # 	puts "A fruit of type: #{fruit}"
# # end
# # change.each {|i| puts "I got #{i}"}

# # elements = []
# # (0..5).each do |i|
# # 	puts "adding #{i} to the list."
# # 	elements.push(i)
# # 	puts elements
# # end

# # elements.each {|element| puts "#{element} is part of the family"}

# # a = [[1,2,3],[4,5,6]]
# # puts a.size
# # puts a.length
# # puts a.count

# # i = 0
# # numbers = []

# # while  i < 6
# # 	puts "At the top i is #{i}"
# # 	numbers.push(i)

# # 	i += 1
# # 	puts "Numbers now: ", numbers
# # 	puts "At the bottom i is #{i}"
# # end

# # puts "The numbers: "
# # numbers.each {|num| puts num}

# def gold_room
# 	puts "This room is full of gold. How much do you take?"

# 	print "> "
# 	choice = $stdin.gets.chomp

# 	#this line has a bug, so fix it
# 	if choice.include? "0" || if choice.include? "1"
# 		how_much = choice.to_i
# 	else
# 		dead("Man, learn to type a number.")
# 	end

# 	if how_much < 50
# 		puts "Nice, you're not greedy, you win!"
# 		exit(0)
# 	else
# 		dead("You greedy bastard!")
# 	end
# end

# def bear_room
# 	puts "There is a bear here."
# 	puts "The bear has a bunch of honey."
# 	puts "The fat bear is in front of another door."
# 	puts "How are you going to move the bear?"
# 	bear_moved = false

# 	while true
# 		print "> "
# 		choice = $stdin.gets.chomp

# 		if choice == "take honey"
# 			dead("The bear looks at you then slaps your face")
# 		elsif choice == "taunt bear" && !bear_moved
# 			puts "The bear has moved from the door. You can go through it now."
# 			bear_moved = true
# 		elsif choice == "taunt bear" && bear_moved
# 			dead("The bear gets pissed off and chew your leg off.")
# 		elsif choice == "open door" && bear_moved
# 			gold_room
# 		else
# 			puts "I got no idea what that means."
# 		end
# 	end
# end

# def cthulhu_room
# 	puts "Here you see the great evil Cthulhu."
# 	puts "He, it, whatever stares at you and you go insane."
# 	puts "Do you flee for your life or eat your head?"

# 	print "> "
# 	choice = $stdin.gets.chomp

# 	if choice.include? "flee"
# 		start
# 	elsif choice.include? "head"
# 		dead("Well that was tasty!")
# 	else
# 		cthulhu_room
# 	end
# end

# def dead(why)
# 	puts why, "Good job!"
# 	exit(0)
# end

# def start 
# 	puts "You are in a dark room"
# 	puts "There is a door to your right and left."
# 	puts "Which one do you take?"

# 	print "> "
# 	choice = $stdin.gets.chomp

# 	if choice == "left"
# 		bear_room
# 	elsif choice == "right"
# 		cthulhu_room
# 	else
# 		dead("You stumble around the room until you starve.")
# 	end
# end

# start

def gold_room
  puts "This room is full of gold.  How much do you take?"

  print "> "
  choice = $stdin.gets.chomp

  # this line has a bug, so fix it
  if choice.include? "0" || if choice.include? "1"
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
  end

  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    exit(0)
  else
    dead("You greedy bastard!")
  end
end


def bear_room
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  bear_moved = false

  while true
    print "> "
    choice = $stdin.gets.chomp

    if choice == "take honey"
      dead("The bear looks at you then slaps your face off.")
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I got no idea what that means."
    end
  end
end


def cthulhu_room
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well that was tasty!")
  else
    cthulhu_room
  end
end


def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start

  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp
  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulhu_room
  else
    dead("You stumble around the room until you starve.")
  end
end

start