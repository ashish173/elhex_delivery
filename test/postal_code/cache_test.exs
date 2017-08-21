defmodule ElhexDelivery.PostalCode.CacheTest do
  use ExUnit.Case
  alias ElhexDelivery.PostalCode.Cache

  test "simple memoisation" do
    a = "98"
    b = "120"
    distance = 99.80

    Cache.set_distance(a, b, distance)

    retrieved_distance = Cache.get_distance(a, b)

    assert retrieved_distance == 99.80
  end
end