defmodule ElhexDelivery.PostalCode.Navigator do
  
  def get_distance(from, to) do
    do_get_distance(from, to)
  end

  defp do_get_distance(from, to) do
    {lat1, long1} = get_geolocation(from)
    {lat2, long2} = get_geolocation(to)
    
    calculate_distance({lat1, long1}, {lat2, long2})
  end

  # For string input
  defp get_geolocation(postal_code) when is_binary(postal_code) do
    {123, 456}
  end

  # For integer input
  defp get_geolocation(postal_code) when is_integer(postal_code) do
    postal_code = Integer.to_string(postal_code)
    get_geolocation(postal_code)
  end

  # For arbitrary params
  defp get_geolocation(postal_code) do
    error = "unexpected `postal_code`, received: (#{inspect(postal_code)})"
    raise ArgumentError, error
  end

  defp calculate_distance({lat1, long1}, {lat2, long2}) do
    # Math...
    22.95
  end

end