defmodule HolidayRecommendation do
  
  defp create_list_of_city_weathers(city_ids_list, weather_api) do
    Enum.map(city_ids_list, 
      fn city_id -> 
        CityWeather.read_weather(weather_api, city_id)
      end
    )
  end
  
  def make_holiday_recommendation(city_ids_list, weather_api) do
    create_list_of_city_weathers(city_ids_list, weather_api)
    |> DestinationEvaluator.hottest_coldest_rainiest_map(city_weather_list)
  end
  
end
