# Dockerizing Phoenix application

Step one: Make sure you have docker installed. (Docker Install)[https://docs.docker.com/install/]

Step Two: Make sure you have `docker-compose` installed (Docker Compose Install)[https://docs.docker.com/compose/install/]

Step three: Lets create Docker Image (Refer to Dockerfile in this repo)

Step four: Lets create Compose file (Refer to docker-compose.yml file in this repo)

Step five: Create our project

`sudo docker-compose run web mix phoenix.new . --app phoenix_docker --no-brunch`

Step six: Create DB, Link to Web and Configure

	Refer to `docker-compose.yml` database section

	Since we have already installed the application, Go to `config/dev.exs` to configure database.

```
  config :phoenix_docker, PhoenixDocker.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("DB_ENV_POSTGRES_USER"),
  password: System.get_env("DB_ENV_POSTGRES_PASSWORD"),
  hostname: System.get_env("DB_ENV_POSTGRES_HOST"),
  database: "phoenix_docker_dev",
  pool_size: 10
```

Step sevent: Start the service

 > docker-compose up

 > Go to http://localhost:4000/` -> Phoenix app should be running 

**Note: However you would see error message**
	 
	```
	web_1  | [error] Postgrex.Protocol (#PID<0.2567.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
	```

	that's because, we haven't set up the database connection yet.
	
**Note** -> The phoenix app is still does not connect to DB. _still investigating_ 


## Commands

	Install dependencies -> `sudo docker-compose run web mix deps.get`

	Compile -> `sudo docker-compose run web mix deps.compile`

	Create the database-> `sudo docker-compose run web mix ecto.create`

	Update Postgres to latest version in case Postgres throwing an error `mix deps.update postrgex`

### References

	https://medium.com/@cristiano.codelab/dockerizing-a-phoenix-application-4e62e7888ae8

