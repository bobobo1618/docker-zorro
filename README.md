# How to use

1. Get wine.tar.gz. Do this by installing MetaTrader 4 in WINE as root (in another container for example) then compressing running `cd / && tar czf wine.tar.gz /root/.wine`. The resulting file should be copied alongside Dockerfile
2. Copy an already installed Zorro installation somewhere.
3. Run `docker build -t zorro .`. This builds the Docker image.
4. Run `docker run -i -t -d -p <port>:5901 -v <zorro location>:/opt/zorro:z --name zorro --restart=always zorro`. <zorro location> should be the location of your Zorro install (the folder that contains Zorro.exe).
5. Connect to <host IP>:<port> with VNC. There is no username or password by default and use of SSH tunnels is recommended.
