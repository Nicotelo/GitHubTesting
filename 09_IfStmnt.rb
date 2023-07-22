ismale = false
isfemale = false
istall = true
=begin
if ismale == true 
    puts "Is male"
end
=end
if ismale == true 
    puts "Is male"
else 
    puts "Is female"
end

if ismale and istall
    puts "Is male and is tall"
elsif ismale and !istall
    puts "Is male but is not tall"
elsif isfemale and istall
    puts "Is female and is tall"
elsif isfemale and not istall
    puts "Is female but is not tall"
elsif !isfemale and !ismale and istall
    puts "Is non binary and is tall"
else
    puts "Is non binary and is not tall"
end