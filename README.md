# Build your own SQL fiddle w/ Docker & Visual Studio Code

![img](img/pg-sql-docker-fiddle.png)

## Objective

To create a unified view of our data analysis environment by:

* Maximizing the mileage of your editor (we’ll be using Visual Studio Code)
* Minimizing context-switching b/t multiple tabs, windows

See [here](https://dmitriysynkov.medium.com/build-your-own-sql-fiddle-with-docker-vscode-88dfa54105fe) for accompanying blog post. 

For video walkthroughs see:

1. [Build your own SQL fiddle with Docker & Visual Studio Code](https://youtu.be/-MzhW1892fE)
2. [Adding authentication to your Dockerized PostgreSQL database](https://youtu.be/TGda9qn6XF8)
3. [Loading the AdventureWorks dataset with docker-compose](https://youtu.be/Hhbiup59NYE)

## Sample Commands

To bring up the service run:
```
docker-compose up -d
```
To check logs:
```
docker logs -f pg-fiddle
```
To enter a container:
```
docker exec -it pg-fiddle bash
```
To bring down the service:
```
docker-compose down
```

## Prerequisites

* [Docker](https://www.docker.com/products/docker-desktop)
* [Visual Studio Code](https://code.visualstudio.com/download)
  * [PostgreSQL extenstion](https://marketplace.visualstudio.com/items?itemName=ms-ossdata.vscode-postgresql)
  * [SQLTools Extension](https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools)
  * [SQLTools PostgreSQL Driver](https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools-driver-pg)
  * [Docker extension](https://code.visualstudio.com/docs/containers/overview)
