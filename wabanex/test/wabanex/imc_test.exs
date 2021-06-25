defmodule Wabanex.IMCTest do
  use ExUnit.Case, async: true

  alias Wabanex.IMC

  describe "calculate/1" do
    test "when the file exists, returns the data" do
      params = %{"filename" => "students.csv"}

      response = IMC.calculate(params)

      expected_response =
        {:ok,
         %{
           "Teste1" => 23.624795296518027,
           "Teste2" => 26.315789473684212,
           "Teste3" => 30.864197530864196,
           "Teste4" => 20.747550193111813,
           "Teste5" => 26.014568158168572
         }}

      assert response == expected_response
    end

    test "when the wrong filename is given, return an error" do
      params = %{"filename" => "students2.csv"}

      response = IMC.calculate(params)

      expected_response = {:error, "Deu erro!"}

      assert response == expected_response
    end
  end
end
