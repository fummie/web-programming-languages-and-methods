# frozen_string_literal: true

# Input class is responsible for writing to console
class Input
  def self.read
    gets.strip
  end

  def self.write(message)
    print message
  end
end
