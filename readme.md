<h1 align="center">Luxe-Asset</h1>
<p align="center"></p>
<p align="center">
</p>


## Running in debug mode with hot reloading

```sh
make serve
```

## Running in production mode 

```sh
ORE_PEER_ADDRESS=peer:7052 CORE_CHAINCODE_ID_NAME=mycc:0 CORE_PEER_TLS_ENABLED=false ./src -peer.address peer:7052
```

## Installing

```sh
$ glide up
```

## Downstream dependency 
```sh
```

## Running & building  with docker

```sh
docker-compose -f docker-compose-local.yml build / docker build -t luxe-asset:latest -f Dockerfile .
docker-compose -f docker-compose-local.yml up  /  docker run -p 8080:8080 luxe-asset:latest
```

## Running the tests

```sh
$ go test
```

