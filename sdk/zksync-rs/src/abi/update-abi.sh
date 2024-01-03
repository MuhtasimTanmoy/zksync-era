#!/bin/bash

cd `dirname $0`

# Main zkSync contract interface
cat $ZKSYNC_HOME/contracts/l1-contracts/artifacts/cache/solpp-generated-contracts/bridgehub/bridgehub-interfaces/IBridgehub.sol/IBridgehub.json | jq '{ abi: .abi}' > IBridgehub.json
cat $ZKSYNC_HOME/contracts/l1-contracts/artifacts/cache/solpp-generated-contracts/state-transition/state-transition-interfaces/IZkSyncStateTransition.sol/IZkSyncStateTransition.json | jq '{ abi: .abi}' > IZkSyncStateTransition.json
cat $ZKSYNC_HOME/contracts/l1-contracts/artifacts/cache/solpp-generated-contracts/state-transition/chain-interfaces/IStateTransitionChain.sol/IStateTransitionChain.json | jq '{ abi: .abi}' > IStateTransitionChain.json
# Default L1 bridge
cat $ZKSYNC_HOME/contracts/l1-contracts/artifacts/cache/solpp-generated-contracts/bridge/interfaces/IL1Bridge.sol/IL1Bridge.json | jq '{ abi: .abi}' > IL1Bridge.json
# Paymaster interface
cat $ZKSYNC_HOME/contracts/l2-contracts/artifacts-zk/cache-zk/solpp-generated-contracts/interfaces/IPaymasterFlow.sol/IPaymasterFlow.json | jq '{ abi: .abi}' > IPaymasterFlow.json
