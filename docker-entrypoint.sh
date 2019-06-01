#!/bin/bash

if [ "$1" == "testnet" ]; then
  dropwtxmgr --db=$HOME/.lnd/data/chain/bitcoin/testnet/wallet.db
elif [ "$1" == "mainnet" ]; then
  dropwtxmgr --db=$HOME/.lnd/data/chain/bitcoin/mainnet/wallet.db
elif [ ! -z $1 ]; then
  dropwtxmgr $@
else
  dropwtxmgr --help
fi
