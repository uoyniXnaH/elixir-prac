defmodule WeatherApp do
  @doc "Return the current weather for the given city"
  def get_weather(city) do
    case city do
      "Beijing" -> {:ok, "Sunny", 25}
      "London" -> {:ok, "Cloudy", 15}
      "New York" -> {:ok, "Rainy", 20}
      _ -> {:error, "City not found"}
    end
  end

  def print_report(city) do
    city
    |> get_weather()
    |> format_output()
  end

  defp format_output({:ok, condition, temp}) do
    "The current weather is #{condition} with a temperature of #{temp}°C."
  end
  defp format_output({:error, message}) do
    "Error: #{message}"
  end
end
