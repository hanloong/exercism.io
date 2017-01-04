defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    string
      |> splitter
      |> Enum.map(&(String.at(&1, 0)))
      |> Enum.join
      |> String.upcase
  end

  defp splitter(string) do
    string
      |> String.replace(~r/(?=[A-Z])/, " ")
      |> String.split([", ", " "])
  end
end
