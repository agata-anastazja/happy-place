defmodule HappyPlaceTest do
  use ExUnit.Case
  doctest HappyPlace

  test "returns a JSON with the hottest city" do
    expected_json = "{\"rainiest_city\":{\"temperature\":292.84,\"name\":\"London\",\"id\":2643743,\"humidity\":68},\"hottest_city\":{\"temperature\":298.19,\"name\":\"Madrid\",\"id\":3117735,\"humidity\":41},\"coldest_city\":{\"temperature\":289.15,\"name\":\"Kiev\",\"id\":703448,\"humidity\":63}}"
    assert expected_json ==  HappyPlace.make_holiday_recommendation
  end
end
