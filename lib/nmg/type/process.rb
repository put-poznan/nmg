module Nmg
  module Type
    # Define process with all it's attributes
    class Process < Base
      # @!macro [attach] virtus.attribute
      #   @!attribute $1
      #     @return [$2] the $1 $0
      attribute :operations, Array[Operation]

      def to_json(options = {})
        operations.to_json(options)
      end

      def self.generate(count, options = {}, gen = Random.new)
        operations = options[:operations]

        count.times.map do
          new(operations: Operation.generate(operations, options))
        end
      end
    end
  end
end
