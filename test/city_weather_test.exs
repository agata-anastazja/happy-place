defmodule CityTest do
  use ExUnit.Case

  test "returns temperature and rain dictionary for specific city based on city ID" do

    city = CityWeather.read_weather(FakeWeatherApi, 3088171)
    assert city == %CityWeather{
              humidity: 30,
              id: 3088171,
              name: "Poznan",
              temperature: 302.15
            }

  end
end
