require 'wordlist'

#Get evil idea and swap in code words
print "Enter your new idea: "
idea = gets
code_words.each do |real, code|
	idea.gsub! ( real, code )
end

# Save the jibberish to a new file
print "File encoded. Please enter a name for this idea: "
idea_name = gets.strip
File::open( "idea-" + idea_name + ".txt", "w") { |f|
	f << idea
}

# Print each idea out with the words fixed
p Dir['idea-*.txt'].each { |file_name|
	idea = FIle.read(file_name)
	code_words.each { |real, code|
		idea.gsub! (code, real)
	}
	puts idea
}