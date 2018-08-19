defmodule HappyPlace.LoaderTest do
  use ExUnit.Case
    
    test "a successful call gets information about Poznan" do
      response = OpenWeatherMapApi.load_current_weather(3088171)
      assert response =~ "Poznan"
    end

end 

