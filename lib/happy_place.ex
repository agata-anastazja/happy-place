defmodule HappyPlace do
  @default_city_ids_list [3088171, 2643743, 3117735, 703448, 2950159]
  
  defp create_list_of_city_weathers(city_ids_list \\ @default_city_ids_list, weather_api \\ OpenWeatherMapApi) do
    Enum.map(city_ids_list, 
      fn x -> 
        CityWeather.read_weather(weather_api, x) 
      end
    )
  end
  
  defp retrieve_result(map) do
    {:ok, result} = map
    result
  end
  
  defp make_holiday_recommendation_json(city_weather_list) do
    DestinationEvaluator.hottest_coldest_rainiest_map(city_weather_list)
    |> Poison.encode
    |> retrieve_result
  end
  
  def make_holiday_recommendation do
    create_list_of_city_weathers()
    |>make_holiday_recommendation_json()
  end
end
