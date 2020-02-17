require 'minitest/autorun'
require 'minitest/reporters'
require "minitest/skip_dsl"

require_relative '../lib/linked_list'


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe LinkedList do
  # Arrange
  before do
    @list = LinkedList.new
  end
  
  describe 'initialize' do
    it 'can be created' do
      
      # Assert
      expect(@list).must_be_kind_of LinkedList
    end
  end
  
  describe 'add_first & get_first' do
    it 'can add values to an empty list' do
      # Act
      @list.add_first(3)
      
      # Assert
      expect(@list.get_first).must_equal 3
    end
    
    it 'will put the last added item to the front of the list' do
      # Act
      @list.add_first(1)
      @list.add_first(2)
      
      # Assert
      expect(@list.get_first).must_equal 2
      
      # Act again
      @list.add_first(3)
      
      # Assert
      expect(@list.get_first).must_equal 3
    end
    
    it 'will return `nil` for `getFirst` if the list is empty' do
      
      expect(@list.get_first).must_be_nil
    end
  end
  
  describe "length" do
    it "will return 0 for an empty list" do
      expect(@list.length).must_equal 0
    end
    
    it "will return the length for nonempty lists" do
      count = 0
      while count < 5
        @list.add_first(count)
        count += 1
        expect(@list.length).must_equal count
      end
    end
  end
  
  describe "addLast & getLast" do
    it "will add to the front if the list is empty" do
      @list.add_last(1)
      expect(@list.get_first).must_equal 1
    end
    
    it "will put new items to the rear of the list" do
      @list.add_last(2)
      expect(@list.length).must_equal 1
      expect(@list.get_last).must_equal 2
      
      @list.add_last(3)
      expect(@list.get_first).must_equal 2
      expect(@list.get_last).must_equal 3
      expect(@list.length).must_equal 2
      
      @list.add_last(4)
      expect(@list.get_first).must_equal 2
      expect(@list.get_last).must_equal 4
      expect(@list.length).must_equal 3
      
    end
    
  end
  
  describe 'get_at_index' do
    it 'returns nil if the index is outside the bounds of the list' do
      expect(@list.get_at_index(3)).must_be_nil
    end
    
    it 'can retrieve an item at an index in the list' do
      @list.add_first(1)
      @list.add_first(2)
      @list.add_first(3)
      @list.add_first(4)
      
      expect(@list.get_at_index(0)).must_equal 4
      expect(@list.get_at_index(1)).must_equal 3
      expect(@list.get_at_index(2)).must_equal 2
      expect(@list.get_at_index(3)).must_equal 1
    end
  end
end
