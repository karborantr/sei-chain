#!/usr/bin/env sh

NODE_ID=${ID:-0}

LOG_DIR="build/generated/logs"
mkdir -p $LOG_DIR

# Starting sei chain
echo "Starting the seid process for node $NODE_ID..."
cp build/generated/genesis.json ~/.sei/config/genesis.json
seid start --chain-id sei > "$LOG_DIR/seid-$NODE_ID.log" 2>&1 &
echo "Node $NODE_ID seid is started now"
echo "Done" >> build/generated/launch.complete
