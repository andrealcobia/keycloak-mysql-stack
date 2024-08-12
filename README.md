# keycloak-mysql

The goal of this project is to use [`Keycloak`](https://www.keycloak.org/) and [`Mysql`](https://www.mysql.com/) and import an existing realm.

## Starting Environment

Open a terminal and inside the root folder run:

```
docker-compose build && docker-compose up -d
```

This script will start:

- one `Mysql` Docker container;
- one `Keycloak` Docker container;

## Configuring Keycloak

By adding the flag `--import-realm` the `realm-export.json` inside the `keycloak-ini` folder will be configured in the boot process of the `keycloak`container.

The realm will have:

- create `example-realm` realm;
- create `example-client` client;
- create `test-user` user;

## Useful Links & Commands

- **Keycloak**

  The `Keycloak` website is at http://localhost:8080

## Cleanup

To remove the all docker image created, simply go to a terminal and run the following script:

```
./shutdown-environment.sh
```
