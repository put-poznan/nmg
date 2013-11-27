module Nmg
  module Type
    class Maintenance < Base
      attribute :start, Integer
      attribute :duration, Integer

      def stop
        start + duration
      end

      def self.generate(count, options = {}, generator = Random.new)
        options = {from: 1, to: 20, step: {min: 10, max: 50}}.merge(options)

        arr = []
        duration = (options[:from]..options[:to])
        step = (options[:step][:min]..options[:step][:max])

        arr << Maintenance.new(start: generator.rand(step),
                               duration: generator.rand(duration))

        count.to_i.times do
          last = arr.last

          arr << Maintenance.new(start: last.stop + generator.rand(step),
                                 duration: generator.rand(duration))
        end

        arr
      end
    end
  end
end
