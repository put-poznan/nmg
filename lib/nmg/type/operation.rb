module Nmg
  module Type
    class Operation < Base
      attribute :preparation, Integer
      attribute :duration, Integer

      def to_json(options = {})
        {
          preparation: preparation,
          duration: duration
        }.to_json(options)
      end

      def self.generate(count, options = {}, gen = Random.new)
        prep = (options[:prep_min]..options[:prep_max])
        count.times.map do
          new(preparation: gen.rand(prep),
             duration: gen.rand(options[:min]..options[:max]))
        end
      end
    end
  end
end
