#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.dashcore/dashd.pid file instead
export LC_ALL=C

dash_pid=$(<~/.dashcore/testnet3/dashd.pid)
sudo gdb -batch -ex "source debug.gdb" dashd ${dash_pid}
