defmodule ElhexDelivery.PostalCode.NavigatorTest do
  use ExUnit.Case
  alias ElhexDelivery.PostalCode.Navigator
  doctest ElhexDelivery

  describe "get_distance format test" do
    test "postal codes strings" do
      distance = Navigator.get_distance("13054", "16659")
      assert is_float(distance)
    end

    test "postal codes integers" do
      distance = Navigator.get_distance(13054, 16659)
      assert is_float(distance)
    end

    test "postal codes mix of strings and ints" do
      distance = Navigator.get_distance("13054", 16659)
      assert is_float(distance)
    end

    test "postal codes arbitrary params" do
      assert_raise ArgumentError, fn -> 
        Navigator.get_distance("13054", 16659.344)
      end
    end
  end

  describe "get_distance (actual distance)" do
    test "distance_between_rwc_and_sf" do
      distance = Navigator.get_distance(94062, 94104)
      #IO.puts "RWC -> SF: #{distance}"
      assert distance == 26.75
    end
    test "distance_between_sf_and_nyc" do
      distance = Navigator.get_distance(94104, 10112)
      # IO.puts "SF -> NYC: #{distance}"
      assert distance == 2565.28
    end
    test "distance_between_mnpls_and_austin" do
      distance = Navigator.get_distance(55401, 78703)
      # IO.puts "MNPLS -> AUSTIN: #{distance}"
      assert distance == 1044.08
    end
  end
end