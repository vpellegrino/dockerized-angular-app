# Dockerized Angular App

Starting from a project, generated with [Angular CLI](https://github.com/angular/angular-cli), this application has been containerized for both *dev* and *prod* modes.

## Available Scripts
In the project directory, you can run:

### `npm install`

Launches the dependencies installation.

### `npm build`

The build artifacts will be stored in the `dist/` directory, optimized for production.

### `npm test`

Executes the unit tests via [Karma](https://karma-runner.github.io).

### `npm e2e`

Executes the end-to-end tests via [Protractor](http://www.protractortest.org/).

### `npm lint`

Executes the static code analysis.

## Docker commands

### PROD
Following commands can be used to build and run an image for the production environment:

```
docker build -t dockerized-angular-app .

docker run -p 8080:80 dockerized-angular-app
```

Application will be visible, navigating with the browser to http://localhost:8080/

### DEV
There is the possibility to build and run this image in development mode, supporting hot reloading:

```
docker-compose up --build
```

Application will be visible, navigating with the browser to http://localhost:4200/

Consider that each time you change a source file, the application gets automatically reloaded, because of the volume specified in `docker-compose.yaml`.
