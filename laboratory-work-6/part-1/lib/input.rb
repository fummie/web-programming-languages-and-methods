# frozen_string_literal: true

require_relative '../data/messages'

# Input class is responsible for reading and writing to and from console and
# querying user
class Input
  def read
    print "#{RADIUS_QUERY_MSG}\n> "
    radius = gets.strip
    return radius.to_f if valid?(radius)

    raise INVALID_MSG
  end

  def write(hash)
    hash.each { |message, value| puts "#{message} #{value}" }
  end

  private

  def valid?(radius)
    /\A[+]?\d+(\.\d+)?\z/.match(radius)
  end
end
