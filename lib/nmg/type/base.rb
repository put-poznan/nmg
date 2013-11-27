module Nmg
  module Type
    class Base
      include Virtus.model

      def to_json(options = {})
        attributes.to_json(options)
      end
    end
  end
end
