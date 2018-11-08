require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'linked_list'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe LinkedList do

  describe 'initialize' do
    it 'can be created' do
      # Arrange & Act
      list = LinkedList.new

      # Assert
      expect(list).must_be_kind_of LinkedList
    end
  end

  describe 'addFirst & getFirst' do
    # Arrange
    before do
      @list = LinkedList.new
    end

    it 'can add values to an empty list' do
      # Act
        @list.addFirst(3)

        # Assert
        expect(@list.getFirst).must_equal 3
    end

    it 'will put the last added item to the front of the list' do
      # Act
      @list.addFirst(1)
      @list.addFirst(2)

      # Assert
      expect(@list.getFirst).must_equal 2

      # Act again
      @list.addFirst(3)

      # Assert
      expect(@list.getFirst).must_equal 3
    end

    it 'will return `nil` for `getFirst` if the list is empty' do

      expect(@list.getFirst).must_be_nil
    end
  end
end
