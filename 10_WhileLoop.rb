index = 1

puts "-------- While ---------"
while index != 10
    puts "Hey " + index.to_s
    index += 1
end

puts "-------- For ---------"
index = 10

for a in 1..index do
    puts "Hey " + a.to_s
end

puts "-------- Do while ---------"

index = 1
loop do
    puts "Hey " + index.to_s
    if index == 10
        break
    end
    index += 1
end


puts "-------- Do while ---------"
index = 1
until index == 11 do
    puts "Hey " + index.to_s
    index += 1
end
#https://www.geeksforgeeks.org/ruby-loops-for-while-do-while-until/#



puts "-------- For for arrays ---------"

friends = ["Tom", "Kevin", "Kenneth", "Oscar"]
for friend in friends
    puts friend
end

friends.each do |friend| 
    puts friend
end

friends.each {|friend| puts friend}