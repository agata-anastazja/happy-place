defmodule HolidayRecommendationTest do
  use ExUnit.Case

  test "returns a JSON with the hottest city" do
    city_ids_list = [3088171, 2643743, 3117735, 703448, 2950159]
    
    expected_result =%{
              coldest_city: %CityWeather{
                humidity: 40,
                id: 2950159,
                name: "Berlin",
                temperature: 202.15
              },
              hottest_city: %CityWeather{
                humidity: 30,
                id: 3088171,
                name: "Poznan",
                temperature: 302.15
              },
              rainiest_city: %CityWeather{
                humidity: 82,
                id: 2643743,
                name: "London",
                temperature: 284.7
              }
            }
    assert expected_result ==  HolidayRecommendation.make_holiday_recommendation(city_ids_list, FakeWeatherApi)
  end
end
