## How the Project Works
This project uses Laravel [Tenancy for Laravel](https://tenancyforlaravel.com/) under the hood. The following are process required to run the application.


### Clone the repo
```
git clone https://github.com/devsahm/multitenancy-docker
```

### Build and Start the Project with Docker
Make sure you have started your running docker on your local machine and run this command
```
docker-compose up -d --build
```

I abstracted the all docker commands into a Makefile for easy usage. This command build and serve the application, runs migration and seed the data for multitenant application

```
make setup
```
