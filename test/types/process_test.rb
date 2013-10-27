require 'test_helper'

describe Nmg::Types::Process do
  subject { Nmg::Types::Process.new(execution: 10, preparation: 10) }

  describe "#execution" do
    it "return Integer" do
      subject.execution.must_be_kind_of Integer
    end
  end
end
