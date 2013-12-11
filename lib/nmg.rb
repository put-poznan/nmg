require 'virtus'

require 'nmg/version'
require 'nmg/type/base'

module Nmg
  module Sink
    autoload :Json, 'nmg/sink/json'
  end
  module Type
    autoload :Process,      'nmg/type/process'
    autoload :Machine,      'nmg/type/machine'
    autoload :Maintenance,  'nmg/type/maintenance'
    autoload :Operation,    'nmg/type/operation'
  end
end
