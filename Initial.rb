 
string = gets.chomp
input_raw = string.split(/\W+/)
if input_raw.length >3
  p "Input too long"
else 
  p input_raw
end

def parse(input_raw)
  if input_raw[1] == "the" || input_raw[1] == "to"
    input_raw.delete_at(1)
  end
  if input_raw[0].downcase == "go" 
    p "going to #{input_raw[1]}"
  elsif input_raw[0].downcase == "help"
    p "You can currently go talk, and take"
  elsif input_raw[0].downcase == "talk"
    p "talking to #{input_raw[1]}"
  elsif input_raw[0] == "look"
    p "not much to look at for the moment"
  elsif input_raw[0] == "take" || input_raw[0] == "get"
    p "taking the #{input_raw[1]}"
  elsif 
    p "invaid argument, type help for commands, or look to look around"
  end
end

parse(input_raw)

