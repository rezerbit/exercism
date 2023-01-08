defmodule GuessingGame do
  def compare(secret_number) do
    "Make a guess"
  end

  def compare(_secret_number, guess) when not is_integer(guess) do
    "Make a guess"
  end

  def compare(secret_number, guess) when secret_number === guess do
    "Correct"
  end

  def compare(secret_number, guess)
      when secret_number === guess + 1 or secret_number === guess - 1 do
    "So close"
  end

  def compare(secret_number, guess) when secret_number < guess do
    "Too high"
  end

  def compare(secret_number, guess) when secret_number > guess do
    "Too low"
  end
end
