require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'linked_list'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe LinkedList do

  describe 'initialize' do
    it 'can be created' do
      list = LinkedList.new

      expect(list).must_be_kind_of LinkedList
    end
  end

end
