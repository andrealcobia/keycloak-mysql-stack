# Keycloak-MySQL Project

This project demonstrates how to set up and configure a `Keycloak` identity and access management solution with a `MySQL` database, including the import of an existing realm.

## Prerequisites

Before starting, ensure that you have the following installed:

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Starting the Environment

To start the `Keycloak` and `MySQL` environment, open a terminal, navigate to the root folder of the project, and run:

```bash
docker-compose build && docker-compose up -d

This script will start:

- A MySQL Docker container configured to work with Keycloak.
- A Keycloak Docker container that is set up to connect to the MySQL database.

## Configuring Keycloak

The `Keycloak` container is configured to import an existing realm during its startup. By adding the `--import-realm` flag, the `realm-export.json` file located in the `keycloak-ini` folder will be automatically imported.

Imported Realm Configuration
Upon successful startup, `Keycloak` will have the following configurations:

Realm: `example-realm`
Client: `example-client`
User: `test-user`

**Accessing Keycloak** 
Once the containers are up and running, you can access the Keycloak Admin Console at:

URL: http://localhost:8080
Default Admin Credentials:
Username: `admin`
Password: `admin`
You can log in with the admin credentials provided above, navigate to the example-realm, and manage the imported configurations.

## Managing the Environment

**Shutting Down**
To stop and remove all Docker containers and networks created by this setup, run the following script:
```bash
./shutdown-environment.sh
