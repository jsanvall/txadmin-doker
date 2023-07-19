# txadmin-doker
FiveM txAdmin server docker image

## Build
Use the latest zip file from: https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/
```
docker build --build-arg tx_file="https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/6576-bc1ac1bfb2b9bd986c62bca909ffaa1570cfa609/fx.tar.xz" -t txadmin .
```

## Run
Recommend to mount txData as a volume to store txData in docker node or volume.
```
docker run -d --name txadmin \
    -p 40120:40120 -p 40120:40120/udp -p 30120:30120 -p 30120:30120/udp -p 10111:10111 \
    -v $(pwd)/txData:/opt/server/txData txadmin
```
