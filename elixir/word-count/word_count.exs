defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map()
  def count(sentence) do
    words = prepare(sentence)
    words |> Enum.uniq |> Map.new(fn(word) ->
      {word,  count(word, words)}
    end)
  end

  defp count(w, words) do
    words |> Enum.count(&(&1 === w))
  end

  defp prepare(sentence) do
    sentence |> clean |> to_words
  end

  def clean(sentance) do
    sentance |> String.replace(~r/\p{C}/, "")
  end

  defp to_words(sentance) do
    sentance
      |> String.downcase
      |> String.split([" ", "_"], trim: true)
      |> Enum.sort
  end
end
