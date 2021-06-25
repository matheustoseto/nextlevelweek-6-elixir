# nextlevelweek-6-elixir
Api em elixir construído na edição 6 do nextlevelweek da rocketseat

## Configuração
  > https://www.notion.so/Configura-es-do-ambiente-619e245ab8c7483db8118bcb41c51fcc

## Clone Repository

  ```sh
  $ git clone https://github.com/matheustoseto/nextlevelweek-6-elixir.git
  $ cd nextlevelweek-6-elixir/wabanex
  ```

## Create Table

  ```sh
  $ mix ecto.migrate
  ```

## Start Aplication

  ```sh
  $ mix phx.server
  ```

## IEx

  ```sh
  $ iex -S mix
  ```
  
## Test Aplication

  ```sh
  $ mix test
  ```
  
## Graphiql
  
  ```sh
  $ http://localhost:4000/api/graphiql
  ```

  `Create User`
  > Request
  ```sh
  mutation {
    createUser(input: {
      name: "Teste 1",
      email: "teste_1@teste.com",
      password: "123456"
    }) {
      id,
      name
    }
  }
  ```
  > Response
  ```sh
  {
    "data": {
      "createUser": {
        "id": "12470a7f-9abc-4b04-ab9d-7526eb8cd1d1",
        "name": "Teste 1"
      }
    }
  }
  ```
 
  ##

  `Get User`
  > Request
  ```sh
  {
    getUser(id: "12470a7f-9abc-4b04-ab9d-7526eb8cd1d1") {
      email,
      name
    }
  }
  ```
  > Response
  ```sh
  {
    "data": {
      "getUser": {
        "email": "teste_1@teste.com",
        "name": "Teste 1"
      }
    }
  }
  ```
 
  ##
  
  `Create Training`
  > Request
  ```sh
  mutation {
    createTraining(input: {
      userId: "12470a7f-9abc-4b04-ab9d-7526eb8cd1d1",
      startDate: "2021-06-24"
      endDate: "2021-07-24",
      exercises: [
        {
          name: "exe 1",
          protocolDescription: "algo 1",
          repetitions: "2x4",
          youtubeVideoUrl: "www.google.com.br"
        },
        {
          name: "exe 2",
          protocolDescription: "algo 2",
          repetitions: "5x9",
          youtubeVideoUrl: "www.google.com.br"
        }
      ]
    }) {
      id,
      exercises {
        id,
        name
      }
    }
  }
  ```
  > Response
  ```sh
  {
    "data": {
      "createTraining": {
        "exercises": [
          {
            "id": "68b0b300-3e59-4ec5-810b-1683d0adad3b",
            "name": "exe 1"
          },
          {
            "id": "2b03dffd-f605-4ed1-a79a-ab4bba8a45ca",
            "name": "exe 2"
          }
        ],
        "id": "197c9df6-8afc-4d68-8e1f-2d2010f9bb95"
      }
    }
  }
  ```
  
  ##
  
  `Get User With Exercises`
  > Request
  ```sh
  {
    getUser(id: "12470a7f-9abc-4b04-ab9d-7526eb8cd1d1") {
      email,
      name,
      trainings {
        exercises {
          name,
          repetitions
        }
      }
    }
  }
  ```
  > Response
  ```sh
  {
    "data": {
      "getUser": {
        "email": "teste_1@teste.com",
        "name": "Teste 1",
        "trainings": [
          {
            "exercises": [
              {
                "name": "exe 1",
                "repetitions": "2x4"
              },
              {
                "name": "exe 2",
                "repetitions": "5x9"
              }
            ]
          }
        ]
      }
    }
  }
  ```
  
  
