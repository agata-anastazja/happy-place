defmodule Commandline.CLI do  #do not forget the namespace here

  @default_city_ids [3088171, 2643743, 3117735, 703448, 2950159]

  defp transform_string_to_list_of_ids(id_string) do
    String.split(id_string, ",")
    |>Enum.map(&String.to_integer/1)
  end

  defp get_city_ids_list do
    @default_city_ids
  end

  defp get_city_ids_list(command_line_ids) do
    transform_string_to_list_of_ids(command_line_ids)
  end


  def main(args) do
    {opts,_,_}= OptionParser.parse(args,switches: [ids: :string],aliases: [i: :ids])
    city_ids_list = if(opts[:ids], do: get_city_ids_list(opts[:ids]), else: @default_city_ids)
    holidayRecommendation = HappyPlace.make_holiday_recommendation(OpenWeatherMapApi, city_ids_list)
    IO.puts "The coldest city to go to is #{holidayRecommendation[:coldest_city].name}"
    IO.puts "The hottest city to go to is #{holidayRecommendation[:hottest_city].name}"
    IO.puts "The rainiest city to go to is #{holidayRecommendation[:rainiest_city].name}"
  end
end
