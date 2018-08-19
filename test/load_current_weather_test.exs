defmodule HappyPlace.LoaderTest do
  use ExUnit.Case
  use Plug.Test
  
  # test "when user inputs Poznan Pl they get wheather conditions from Poznan" do
  #   # response = Loader.load_current_weather("Poznan", "Pl")
  #   response = OpenWeatherMapApi.load_current_weather()
  #   body = response[:body]
  #   # {:ok, %HTTPoison.Response{body: body}}= {:ok, response}
  #   city = body[:name]
  #   assert city == "Poznan"
  # end 
  # 
    
    test "a successful call gets information about Poznan" do
      response = OpenWeatherMapApi.load_current_weather(3088171)
      assert response =~ "Poznan"
    end

end 

