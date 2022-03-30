# TCP Proxy

A simple tcp proxy written in go, all credits to [maxmcd](https://github.com/maxmcd/tcp-proxy).

## Usage

Binaries available in [releases](https://github.com/fopina/tcp-proxy/releases).

```bash
tcp-proxy -l 0.0.0.0:20000 -r 100.111.145.101:2000
```

Also, a docker image

```bash
docker run --rm -p 20000:20000 \
           ghcr.io/fopina/tcp-proxy -l 0.0.0.0:20000 -r 100.111.145.101:2000
```
