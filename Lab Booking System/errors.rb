class BookingError < StandardError; end

class ResourceUnavailableError < BookingError
  def initialize(resource_name)
    super("'#{resource_name}' is already booked.")
  end
end

class InvalidCancellationError < BookingError
  def initialize
    super("Only active bookings can be cancelled.")
  end
end
