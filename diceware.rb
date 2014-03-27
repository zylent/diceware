#Diceware Password Generator
puts "number of words?"
$num_words = gets.to_i

def dicegen

	for i in 1..5 do
		roll = rand(1..6)
		number = "#{roll}" + "#{number}"
	end
	return number
end


def scanline

	n = dicegen
	File.open( 'wordlist.txt' ) do |io|
	io.each {|line| line.chomp! ; return line if line.include? "#{n}"}

end

nil
end

def passbuild

	for i in 1..$num_words
		word = scanline[5..-1].strip
		passspace = "#{word} " + "#{passspace}" 
		passphrase = "#{word}" + "#{passphrase}"
	end
	puts passspace
	return passphrase
end
puts passbuild