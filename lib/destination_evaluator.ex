defmodule DestinationEvaluator do
  
  def hottest_coldest_rainiest_map(city_weather_list) do
    ordered_list = Enum.sort_by(city_weather_list, &(&1.temperature)) 
    hottest_city = List.last(ordered_list)
    coldest_city = List.first(ordered_list)
    rain_ordered_list = Enum.sort_by(city_weather_list, &(&1.humidity)) 
    rainiest_city = List.last(rain_ordered_list)
    %{
      hottest_city: hottest_city,
      coldest_city: coldest_city,
      rainiest_city: rainiest_city
    }
  end
  
end