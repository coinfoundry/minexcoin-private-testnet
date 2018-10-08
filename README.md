## Minexcoin diamond three-node private network in regtest mode

- Node Pool
  - RPC Port 16001, Username: user, Password: pass
- Node Bob
  - RPC Port 16002, Username: user, Password: pass
- Node Alice
  - RPC Port 16003, Username: user, Password: pass

### Addresses

- Pool:
- Bob:
- Alice:

### To run this image with internal ports exposed at host:

```bash
docker run -it -d -p 16101:16101 -p 16102:16102 -p 16103:16103 coinfoundry/minexcoin-private-testnet
```

### Generating blocks:

```bash
docker exec -i -t <container_id> /usr/bin/minexcoin-cli -datadir=/data/node-pool generate 1
```

### Example RPC against Node-Pool:

```bash
curl --user user:pass --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getinfo", "params": [] }' -H 'content-type: application/json;' http://127.0.0.1:16001/
```
