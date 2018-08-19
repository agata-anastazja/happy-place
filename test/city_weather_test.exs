defmodule CityTest do
  use ExUnit.Case

  # setup_all do
  #   fake_weather_response = "{\"coord\":{\"lon\":16.93,\"lat\":52.41},\"weather\":[{\"id\":800,\"main\":\"Clear\",\"description\":\"clear sky\",\"icon\":\"01d\"}],\"base\":\"stations\",\"main\":{\"temp\":303.15,\"pressure\":1018,\"humidity\":28,\"temp_min\":303.15,\"temp_max\":303.15},\"visibility\":10000,\"wind\":{\"speed\":3.6,\"deg\":260},\"clouds\":{\"all\":0},\"dt\":1534689000,\"sys\":{\"type\":1,\"id\":5364,\"message\":0.1534,\"country\":\"PL\",\"sunrise\":1534650146,\"sunset\":1534702078},\"id\":3088171,\"name\":\"Poznan\",\"cod\":200}"
  #   {:ok, fake_response_body: :fake_weather_response}
  # end
  
  test "returns temperature and rain dictionary for specific city based on city ID" do
    
    poznan_id = 3088171
    city = CityWeather.read_weather(OpenWeatherMapApi, poznan_id)
    assert city ==  %CityWeather{
              humidity: 30,
              id: 3088171,
              name: "Poznan",
              temperature: 302.15
            }
    
  end
end
