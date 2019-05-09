require_relative "spec_helper"

describe LinkedList do
  # Arrange
  before do
    @list = LinkedList.new
  end

  describe "initialize" do
    it "can be created" do

      # Assert
      expect(@list).must_be_kind_of LinkedList
    end
  end

  describe "add_first & get_first" do
    it "can add values to an empty list" do
      # Act
      @list.add_first(3)

      # Assert
      expect(@list.get_first).must_equal 3
    end

    it "will put the last added item to the front of the list" do
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

    it "will return `nil` for `getFirst` if the list is empty" do
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

  describe "get_at_index" do
    it "returns nil if the index is outside the bounds of the list" do
      expect(@list.get_at_index(3)).must_be_nil
    end

    it "can retrieve an item at an index in the list" do
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

  describe "delete" do
    it "will return nil if the list is empty" do
      expect(@list.delete("something")).must_be_nil
    end

    it "will return nil if the element is not in the list" do
      @list.add_first(3)
      @list.add_first(4)
      expect(@list.delete(5)).must_be_nil
      expect(@list.length).must_equal 2
    end

    it "will return the index of the node it deleted" do
      @list.add_first(3)
      @list.add_first(4)
      @list.add_first(5)
      expect(@list.delete(3)).must_equal 2
      expect(@list.delete(5)).must_equal 0

      expect(@list.length).must_equal 1
    end
  end

  describe "find_middle_value" do
    it "returns nil for an empty list" do
      expect(@list.find_middle_value).must_be_nil
    end

    it "rounds down for an even number of elements" do
      @list.add_first(3)
      @list.add_first(5)
      @list.add_first(2)
      @list.add_first(4)

      expect(@list.find_middle_value).must_equal 2
    end
    it "picks the middle element for an odd numbered length list" do
      @list.add_first(3)
      @list.add_first(5)
      @list.add_first(1)
      @list.add_first(4)
      @list.add_first(6)
      expect(@list.find_middle_value).must_equal 1
    end
  end

  describe "find_nth_from_end" do
    it "returns nil for an empty list" do
      expect(@list.find_nth_from_end(3)).must_be_nil
    end

    it "will return nil if n is >= length" do
      @list.add_first(3)
      expect(@list.find_nth_from_end(3)).must_be_nil
    end

    it "will return the nth from the end if n < length" do
      @list.add_first(3)
      @list.add_first(4)
      @list.add_first(5)

      expect(@list.find_nth_from_end(0)).must_equal 3
      expect(@list.find_nth_from_end(1)).must_equal 4
      expect(@list.find_nth_from_end(2)).must_equal 5
    end
  end

  describe "has_cycle" do
    it "will return false if the list is empty" do
      expect(@list.has_cycle).must_equal false
    end

    it "will return true if it has a cycle" do
      @list.add_first(3)
      @list.add_first(4)
      @list.create_cycle

      expect(@list.has_cycle).must_equal true
    end
    it "will return false if it doesn't have a cycle" do
      @list.add_first(3)
      @list.add_first(4)

      expect(@list.has_cycle).must_equal false
    end
  end
end
