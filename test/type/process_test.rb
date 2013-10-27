require 'test_helper'

describe Nmg::Type::Process do
  subject { Nmg::Types::Process.new(operations: [10, 20], preparation: 10) }
end
