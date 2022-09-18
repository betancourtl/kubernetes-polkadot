#!/bin/bash

function download_kusama_db() {
    rm -rf $(pwd)/snapshots/kusama
    mkdir -p $(pwd)/snapshots/kusama
    curl -o - -L http://snapshot.stakeworld.nl/paritydb-ksmcc3.lz4 | lz4 -c -d - | tar -x -C "$(pwd)/snapshots/kusama"
}

function download_polkadot_db() {
    rm -rf $(pwd)/snapshots/polkadot
    mkdir -p $(pwd)/snapshots/polkadot
    curl -o - -L http://snapshot.stakeworld.nl/paritydb-polkadot.lz4 | lz4 -c -d - | tar -x -C "$(pwd)/snapshots/polkadot"
}
