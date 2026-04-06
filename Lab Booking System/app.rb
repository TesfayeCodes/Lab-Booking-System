require_relative "user"
require_relative "resource"
require_relative "booking"
require_relative "errors"

user1 = User.new(id: 1, name: "Dawit", role: "student")
user2 = User.new(id: 2, name: "Selam", role: "assistant")

resource1 = Resource.new(id: 1, name: "Projector", category: "av")
resource2 = Resource.new(id: 2, name: "Microscope", category: "lab")

puts "--- Step 1: Create at least two users ---"
puts "#{user1.name} (#{user1.role})"
puts "#{user2.name} (#{user2.role})"

puts "\n--- Step 2: Create at least two resources ---"
puts "#{resource1.name} (#{resource1.category})"
puts "#{resource2.name} (#{resource2.category})"

puts "\n--- Step 3: Create one valid booking ---"
booking1 = Booking.new(user: user1, resource: resource1)
puts "#{user1.name} booked #{resource1.name} - status: #{booking1.status}"

puts "\n--- Step 4: Try to create a conflicting booking ---"
begin
  Booking.new(user: user2, resource: resource1)
rescue ResourceUnavailableError => e
  puts "Error: #{e.message}"
end

puts "\n--- Step 5: Show the conflict is blocked ---"
puts "#{resource1.name} still available? #{resource1.available?}"

puts "\n--- Step 6: Cancel the first booking ---"
booking1.cancel
puts "Status is now: #{booking1.status}"

puts "\n--- Step 7: Show the resource becomes available again ---"
puts "#{resource1.name} available now? #{resource1.available?}"
