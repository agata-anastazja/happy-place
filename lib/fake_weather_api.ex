defmodule FakeWeatherApi do
  def load_current_weather(city_id) do
    city = EuropeanCities.get_city_by_id(city_id)
    case city do
      "Poznan" -> 
      "{\"coord\":{\"lon\":16.93,\"lat\":52.41},\"weather\":[{\"id\":800,\"main\":\"Clear\",\"description\":\"clear sky\",\"icon\":\"01d\"}],
      \"base\":\"stations\",
      \"main\":
        {\"temp\": 302.15,\"pressure\":1017,\"humidity\":30,\"temp_min\":301.15,\"temp_max\": 302.15},\"visibility\":10000,
        \"wind\":{\"speed\":1.5,\"deg\":280},\"clouds\":{\"all\":0},
        \"dt\":1534699800,\"sys\":{\"type\":1,\"id\":5364,\"message\":0.0028,
        \"country\":\"PL\",\"sunrise\":1534650159,\"sunset\":1534702062},
        \"id\":3088171,\"name\":\"Poznan\",\"cod\":200}"  
      "Berlin" -> 
        "{\"coord\":{\"lon\":16.93,\"lat\":52.41},\"weather\":[{\"id\":800,\"main\":\"Clear\",\"description\":\"clear sky\",\"icon\":\"01d\"}],
        \"base\":\"stations\",
        \"main\":
          {\"temp\": 202.15,\"pressure\":1017,\"humidity\":40,\"temp_min\":301.15,\"temp_max\": 302.15},\"visibility\":10000,
          \"wind\":{\"speed\":1.5,\"deg\":280},\"clouds\":{\"all\":0},
          \"dt\":1534699800,\"sys\":{\"type\":1,\"id\":5364,\"message\":0.0028,
          \"country\":\"DE\",\"sunrise\":1534650159,\"sunset\":1534702062},
          \"id\":3088171,\"name\":\"Berlin\",\"cod\":200}" 
    end
  end
end