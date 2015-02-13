# Runing an R microserver application on Docker

This is sample project for running a [microserver](https://github.com/robertzk/microserver) application on Docker.

## Usage

Create Image

```
docker build -t microserver .
```

Run it !

```
ID=$(docker run -p 4567:4567 -d microserver)
```

You can access it from your browser, [http://localhost:4567/ping](http://localhost:4567/).

Check logs.

```
docker logs $ID
```

Stop it.

```
docker stop $ID
```

Delete it.

```
docker rm $ID
```

## OS X

Use Vagrant. In `Vagrantfile`, just add port forwarding settings.

```
vagrant up
```

and

```
vagrant ssh
```
