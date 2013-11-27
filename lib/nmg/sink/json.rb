require 'json'

module Nmg
  module Sink
    class Json
      def serialize(what)
        ::JSON.generate(what)
      end
    end
  end
end
