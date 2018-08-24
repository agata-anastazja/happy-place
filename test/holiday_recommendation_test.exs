defmodule HolidayRecommendationTest do
  use ExUnit.Case

  test "returns a JSON with the hottest city" do
    city_ids_list = [3088171, 2643743, 3117735, 703448, 2950159]
    
    expected_json = "{\"rainiest_city\":{\"temperature\":284.7,\"name\":\"London\",\"id\":2643743,\"humidity\":82},\"hottest_city\":{\"temperature\":302.15,\"name\":\"Poznan\",\"id\":3088171,\"humidity\":30},\"coldest_city\":{\"temperature\":202.15,\"name\":\"Berlin\",\"id\":2950159,\"humidity\":40}}"
    assert expected_json ==  HolidayRecommendation.make_holiday_recommendation(city_ids_list, FakeWeatherApi)
  end
end
