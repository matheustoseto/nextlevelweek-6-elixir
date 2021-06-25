defmodule WabanexWeb.IMCControllerTest do
  use WabanexWeb.ConnCase, async: true

  describe "index/2" do
    test "when all params are valid, returns the imc info", %{conn: conn} do
      params = %{"filename" => "students.csv"}

      response =
        conn
        |> get(Routes.imc_path(conn, :index, params))
        |> json_response(:ok)

      expected_response = %{
        "result" => %{
          "Teste1" => 23.624795296518027,
          "Teste2" => 26.315789473684212,
          "Teste3" => 30.864197530864196,
          "Teste4" => 20.747550193111813,
          "Teste5" => 26.014568158168572
        }
      }

      assert response == expected_response
    end

    test "when there are invalid params, return an error", %{conn: conn} do
      params = %{"filename" => "students2.csv"}

      response =
        conn
        |> get(Routes.imc_path(conn, :index, params))
        |> json_response(:bad_request)

      expected_response = %{"result" => "Deu erro!"}

      assert response == expected_response
    end
  end
end
