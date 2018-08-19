defmodule OpenWeatherMapApi do

  def load_current_weather(city_id)do
    weather_api_url = "api.openweathermap.org/data/2.5/weather?id=#{city_id}&APPID=15f583b68bbdc5ae8a0f713290266145"
    case HTTPoison.get(weather_api_url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        body
    
      {:error, %HTTPoison.Error{reason: reason}} ->
        reason
    end
  end
  
end