require 'test_helper'

describe Nmg::Type::Process do
  let(:operations) { rand(50..1000).times.map { rand(10..100) } }

  subject { Nmg::Type::Process.new(operations: operations, preparation: 10) }

  describe '#operations' do
    it 'is an array' do
      subject.operations.must_be_kind_of Array
    end

    it 'has exactly the same length as given to' do
      subject.operations.length.must_be :==, operations.length
    end
  end
end
