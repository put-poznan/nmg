module Nmg
  module Type
    # Define process with all it's attributes
    class Process < Base
      # @!macro [attach] virtus.attribute
      #   @!attribute $1
      #     @return [$2] the $1 $0
      attribute :operations, Array[Integer]

      def to_json(options = {})
        operations.to_json(options)
      end

      def self.generate(count, options = {}, gen = Random.new)
        options = {operations: 3, min: 1, max: 20}.merge(options)

        operations = options[:operations]
        range = (options[:min]..options[:max])

        count.times.map do
          new(operations: operations.times.map { gen.rand(range) })
        end
      end
    end
  end
end
