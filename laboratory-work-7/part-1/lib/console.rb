# frozen_string_literal: true

# Console class is responsible for console interaction
class Console
  def self.read
    Integer(gets.strip, exception: false)
  rescue Errno::ENOENT, Errno::EISDIR
    nil
  end
end
