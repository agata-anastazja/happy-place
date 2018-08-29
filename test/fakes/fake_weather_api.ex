defmodule FakeWeatherApi do
  defp get_city_by_id(id) do
    selected_cities_map_by_id = %{
      3088171=> "Poznan",
      2643743=> "London",
      3117735=> "Madrid",
      703448=> "Kiev",
      2950159=> "Berlin"
      }
      selected_cities_map_by_id[id]
  end

  def load_current_weather(city_id) do
    city = get_city_by_id(city_id)
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
          \"id\":2643743,\"name\":\"Berlin\",\"cod\":200}"
      "London" ->
          "{\"coord\":{\"lon\":-0.13,\"lat\":51.51},
            \"weather\":
              [{\"id\":521,
              \"main\":
                \"Rain\",
                \"description\":\"shower rain\",
                \"icon\":\"09n\"}],
                \"base\":\"stations\",
                \"main\":
                  {\"temp\":284.7,
                  \"pressure\":1012,
                  \"humidity\":82,
                  \"temp_min\":283.15,
                  \"temp_max\":287.15},
                  \"visibility\":4900,
                  \"wind\":
                    {\"speed\":6.2,\"deg\":290},
                  \"clouds\":{\"all\":92},\"dt\":1535138580,\"sys\":{\"type\":1,\"id\":5091,\"message\":0.0093,\"country\":\"GB\",\"sunrise\":1535086885,\"sunset\":1535137369},\"id\":2643743,
                  \"name\":\"London\",\"cod\":200}"
        "Madrid" ->
            "{\"coord\":{\"lon\":-3.7,\"lat\":40.42},\"weather\":[{\"id\":800,\"main\":\"Clear\",\"description\":\"clear sky\",\"icon\":\"01n\"}],\"base\":\"stations\",\"main\":{\"temp\":301.68,\"pressure\":1018,\"humidity\":17,\"temp_min\":300.15,\"temp_max\":303.15},\"visibility\":10000,\"wind\":{\"speed\":2.6,\"deg\":320},\"clouds\":{\"all\":0},\"dt\":1535139360,\"sys\":{\"type\":1,\"id\":5505,\"message\":0.0053,\"country\":\"ES\",\"sunrise\":1535088901,\"sunset\":1535137090},\"id\":3117735,\"name\":\"Madrid\",\"cod\":200}"
        "Kiev" ->
          "{\"coord\":{\"lon\":30.52,\"lat\":50.43},\"weather\":[{\"id\":800,\"main\":\"Clear\",\"description\":\"clear sky\",\"icon\":\"01n\"}],\"base\":\"stations\",\"main\":{\"temp\":291.57,\"pressure\":1015,\"humidity\":62,\"temp_min\":288.15,\"temp_max\":293.15},\"visibility\":10000,\"wind\":{\"speed\":2,\"deg\":130},\"clouds\":{\"all\":0},\"dt\":1535140800,\"sys\":{\"type\":1,\"id\":7348,\"message\":0.0029,\"country\":\"UA\",\"sunrise\":1535079660,\"sunset\":1535129888},\"id\":703448,\"name\":\"Kiev\",\"cod\":200}"
    end
  end
end
