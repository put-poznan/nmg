module Nmg
  module Types
    # Define process with all it's attributes
    class Process
      include Virtus.model

      # @!macro virtus.attr
      # @return [$2] the $1 $0
      attribute :execution, Integer
      # @!macro virtus.attr
      attribute :preparation, Integer
    end
  end
end
