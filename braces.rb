def checkValidity str
	validity = false
	temp = str
	while true
		str = str.gsub('{}', '').gsub('[]','').gsub('()','')
	  if str == '' 
	  	validity = true
	  	break
	  end
		if temp == str
			validity = false
			break
		else
			temp = str
		end
	end
	return validity ? "Valid String" : "Not a valid string"
end
puts checkValidity(gets.chomp())