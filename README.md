# txadmin-doker
FiveM txAdmin server docker image

## Build
Use the latest zip file from: https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/
```
docker build --build-arg fx_file="https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/28556-afc95ef9e1ec91e08f2d22c320ed2d8f2a4ac9a7/fx.tar.xz" -t txadmin .
```

## Run
Recommend to mount txData as a volume to store txData in docker node or volume.
```
docker run -d --name txadmin \
    -p 40120:40120 -p 40120:40120/udp -p 30120:30120 -p 30120:30120/udp -p 10111:10111 \
    -v $(pwd)/txData:/opt/server/txData txadmin
```
