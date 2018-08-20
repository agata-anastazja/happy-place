defmodule OpenWeatherMapApi do

  def load_current_weather(city_id)do
    api_key = Application.get_env(:happy_place, :api_access_token)
    weather_api_url = "api.openweathermap.org/data/2.5/weather?id=#{city_id}&APPID=#{api_key}"
    case HTTPoison.get(weather_api_url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        body
    
      {:error, %HTTPoison.Error{reason: reason}} ->
        reason
    end
  end
  
end