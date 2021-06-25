# nextlevelweek-6-elixir
Api em elixir construído na edição 6 do nextlevelweek da rocketseat

# Configuração
  > https://www.notion.so/Configura-es-do-ambiente-619e245ab8c7483db8118bcb41c51fcc

# Clone

  ```sh
  $ git clone https://github.com/matheustoseto/nextlevelweek-6-elixir.git
  $ cd nextlevelweek-6-elixir/wabanex
  ```
  
# Start:

  ```sh
  $ mix phx.server
  ```

# IEx:

  ```sh
  $ iex -S mix
  ```
  
# Test:

  ```sh
  $ mix test
  ```
  
# graphiql:

  ```sh
  $ http://localhost:4000/api/graphiql
  ```
  
  > Create User
  
  ```sh
    mutation {
      createUser(input: {
        name: "Teste 3",
        email: "teste3@teste.com",
        password: "998877"
      }) {
        id
        name
      }
    }
  ```
  
  > Get User
  
  ```sh
    {
      getUser(id: "68297f1f-1406-4278-9ffd-7d8a1bbdd4cc") {
        email
        name
      }
    }
  ```
  
  > Create Training
  
  ```sh
    mutation {
      createTraining(input: {
        userId: "68297f1f-1406-4278-9ffd-7d8a1bbdd4cc",
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
  
  > Get User With Exercises
  
  ```sh
    {
      getUser(id: "68297f1f-1406-4278-9ffd-7d8a1bbdd4cc") {
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
  
  