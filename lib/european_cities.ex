defmodule EuropeanCities do
  def get_city_id(city) do
    selected_cities_and_ids_map = %{
      "Poznan": 3088171,
      "London": 2643743,
      "Madrid": 3117735,
      "Kiev": 703448,
      "Berlin": 2950159
    }
    selected_cities_and_ids_map[city]
  end
  
  def get_city_by_id(id) do
    selected_cities_map_by_id = %{
      3088171=> "Poznan",
      2643743=> "London",
      3117735=> "Madrid",
      703448=> "Kiev",
      2950159=> "Berlin"
      }
      selected_cities_map_by_id[id]
  end
end