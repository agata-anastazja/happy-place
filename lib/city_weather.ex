defmodule CityWeather do

  defstruct [:id, :name, :temperature, :humidity]
  
  defp extract_body(map) do
    {:ok, body} = map
    body
  end
  
  defp retrive_weather(body, city_id) do
    humidity = body["main"]["humidity"]
    temperature = body["main"]["temp"]
    name = body["name"]
    %CityWeather{id: city_id, name: name, humidity: humidity, temperature: temperature}
  end
  
  def read_weather(weather_api, city_id) do
    weather_api.load_current_weather(city_id)
    |> Poison.Parser.parse
    |> extract_body
    |> retrive_weather(city_id)
  end
end