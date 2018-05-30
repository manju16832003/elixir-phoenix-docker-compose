# Dockerizing Phoenix application

Step one: Make sure you have docker installed. (Docker Install)[https://docs.docker.com/install/]

Step Two: Make sure you have `docker-compose` installed (Docker Compose Install)[https://docs.docker.com/compose/install/]

Step three: Lets create Docker Image (Refer to Dockerfile in this repo)

Step four: Lets create Compose file (Refer to docker-compose.yml file in this repo)

Step five: Create our project

`sudo docker-compose run web mix phoenix.new . --app phoenix_docker --no-brunch`

Step six: Start the service

 > docker-compose up

 > Go to http://localhost:4000/` -> Phoenix app should be running 

**Note: However you would see error message**
	 
	```
	web_1  | [error] Postgrex.Protocol (#PID<0.2567.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
	```

	that's because, we haven't set up the database connection yet.
