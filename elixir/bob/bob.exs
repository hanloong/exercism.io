defmodule Teenager do
  @moduledoc """
  Provides a function `hey/1` to generate responses from input gived to the Teenager
  """

  @doc """
  Prints a response from the Tennager

  ## Parameters

    - input: String that represents the name of the person.

  ## Examples

      iex> Teenager.hey("")
      "Fine. Be that way!"

  """
  @spec hey(String.t) :: String.t
  def hey(input) do
    cleaned = clean(input)
    cond do
      empty?(cleaned) -> "Fine. Be that way!"
      shouting?(cleaned) -> "Woah, chill out!"
      question?(cleaned) -> "Sure."
      forceful?(cleaned) -> "Whatever."
      :else -> "Whatever."
    end
  end

  defp empty?(input) do
    String.trim(input) === ""
  end

  defp shouting?(input) do
    String.upcase(input) === input && String.downcase(input) !== input
  end

  defp question?(input) do
    String.ends_with?(input, "?")
  end

  defp forceful?(input) do
    String.ends_with?(input, "!")
  end

  defp clean(input) do
    input |> String.replace(~r/\d+/, "")
  end
end
