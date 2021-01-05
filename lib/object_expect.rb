require 'object_expect/version'

module ObjectExpect
  class Error < StandardError; end

  def expect(message = 'Null value')
    raise Error, message if self.nil?

    self
  end
end

class Object
  include ObjectExpect
end
