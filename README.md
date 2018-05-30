# Dockerizing Phoenix application

Step one: Docker Installation

Step Two: Docker Compose installation

Step three: Lets create Docker Image

Step four: 	Lets create Compose file

Step five: Create our project

	`sudo docker-compose run web mix phoenix.new . --app phoenix_docker --no-brunch`

Step six: Start the service

	`docker-compose up`

	`Go to http://localhost:4000/` -> Phoenix app should be running 

	*Note: However you would see error message*
	`web_1  | [error] Postgrex.Protocol (#PID<0.2567.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused`

	that's because, we haven't set up the database connection yet.