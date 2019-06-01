# dropwtxmgr
Docker version of the dropwtxmgr

## Usage

Automatic mode:
`docker run --rm -it -v $HOME/.lnd:/root/.lnd dropwtxmgr tesnet`

Replace `testnet` with `mainnet` if necessary.

You can run `dropwtxmgr` manually as well, just give it the right parameters.

```
Usage:
  dropwtxmgr [OPTIONS]

Application Options:
  -f          Force removal without prompt
      --db=   Path to wallet database (default:
              /root/.btcwallet/mainnet/wallet.db)

Help Options:
  -h, --help  Show this help message
```
