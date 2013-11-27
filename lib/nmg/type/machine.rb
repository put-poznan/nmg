module Nmg
  module Type
    class Machine < Base
      attribute :maintenances, Array[Maintenance]

      def self.generate(count, options = {}, gen = Random.new)
        options = {maintenances_count: 10}.merge(options)

        maintenances_count = options[:maintenances_count]

        count.times.map do
          new(maintenances: Maintenance.generate(maintenances_count,
                                                 options[:maintenances] || {},
                                                 gen))
        end
      end
    end
  end
end
