defmodule DestinationEvaluatorTest do
  use ExUnit.Case
  
  @fake_city_weathers [
              %CityWeather{
                humidity: 77,
                id: 3088171,
                name: "Poznan",
                temperature: 388.15
              },
              %CityWeather{
                humidity: 173,
                id: 2643743,
                name: "London",
                temperature: 292.05
              },
              %CityWeather{
                humidity: 31,
                id: 3117735,
                name: "Madrid",
                temperature: 299.65
              },
              %CityWeather{
                humidity: 88,
                id: 703448,
                name: "Kiev",
                temperature: 292.15
              },
              %CityWeather{
                humidity: 59,
                id: 2950159,
                name: "Berlin",
                temperature: 189.13
              }
            ]
  describe "hottest_coldest_rainiest_map returns a map with" do
    test "the hottest city" do
      city_weathers_map = DestinationEvaluator.hottest_coldest_rainiest_map(@fake_city_weathers)
      assert city_weathers_map[:hottest_city] == %CityWeather{
        humidity: 77,
        id: 3088171,
        name: "Poznan",
        temperature: 388.15
      }
    end
    
    test "the coldest city" do
      city_weathers_map = DestinationEvaluator.hottest_coldest_rainiest_map(@fake_city_weathers)
      assert city_weathers_map[:coldest_city] == %CityWeather{
        humidity: 59,
        id: 2950159,
        name: "Berlin",
        temperature: 189.13
      }
    end
    
    test "the rainiest city" do
      city_weathers_map = DestinationEvaluator.hottest_coldest_rainiest_map(@fake_city_weathers)
      assert city_weathers_map[:rainiest_city] == %CityWeather{
        humidity: 173,
        id: 2643743,
        name: "London",
        temperature: 292.05
      }
    end
    
  end
end 

