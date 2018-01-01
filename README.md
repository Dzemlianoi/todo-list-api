# ToDo List API

This is a simple API for the task "Create frontend using React.js".

## Getting the code

Clone the repository and put `secrets.key` file to `config/` directory.

## How to start with Docker

First of all you need to install Docker:
- [Install Docker for Mac](https://docs.docker.com/docker-for-mac/install/)
- [Install Docker for Ubuntu](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#install-docker-ce)

Visit [Install Docker](https://docs.docker.com/engine/installation/) for more information.

Also you need to [install Docker Compose](https://docs.docker.com/compose/install/).

Then execute this command to build the image and run the container:
```bash
$ docker-compose up -d
```

To stop, execute this command:
```bash
$ docker-compose stop
```

You can see the logs by executing this command
```bash
$ docker-compose logs -f app
```

## How to start without Docker

If you do not want to use Docker, you can start the server locally by executing the following commands in the project directory:

```bash
$ cp config/database.sample.yml config/database.yml
$ rails db:create db:schema:load
$ rails s
```

## Where can I find the documentation

Just visit http://localhost:3000 a few seconds after starting the container.
