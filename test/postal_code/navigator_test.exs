defmodule ElhexDelivery.PostalCode.NavigatorTest do
  use ExUnit.Case
  alias ElhexDelivery.PostalCode.Navigator
  doctest ElhexDelivery

  describe "get_distance format test" do
    test "postal codes strings" do
      Navigator.get_distance("13054", "16659")
    end

    test "postal codes integers" do
      Navigator.get_distance(13054, 16659)
    end

    test "postal codes mix of strings and ints" do
      Navigator.get_distance("13054", 16659)
    end

    test "postal codes arbitrary params" do
      assert_raise ArgumentError, fn -> 
        Navigator.get_distance("13054", 16659.344)
      end
    end
  end
end