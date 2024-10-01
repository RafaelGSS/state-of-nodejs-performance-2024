#!/bin/bash

# Default versions if no arguments passed
if [ $# -eq 0 ]; then
    versions=("v18-v20" "v20-v22")
else
    versions=("$1")
    if [[ "$1" != "v18-v20" && "$1" != "v20-v22" ]]; then
        echo "Invalid argument. Use 'v18-v20' or 'v20-v22'."
        exit 1
    fi
fi

# Function to run comparison based on version
run_comparison() {
    local version=$1
    if [[ "$version" == "v18-v20" ]]; then
        echo "Comparison between v18 and v20"
        echo ""
        prefix="18-20"
    elif [[ "$version" == "v20-v22" ]]; then
        echo "Comparison between v20 and v22"
        echo ""
        prefix="20-22"
    fi

    echo "node:assert"
    node-benchmark-compare "compare-assert-$prefix.csv"
    echo "node:buffers"
    node-benchmark-compare "compare-buffers-$prefix.csv"
    echo "node:diagnostics_channel"
    node-benchmark-compare "compare-dc-$prefix.csv"
    echo "ESM"
    node-benchmark-compare "compare-esm-$prefix.csv"
    echo "events"
    node-benchmark-compare "compare-events-$prefix.csv"
    echo "node:fs"
    node-benchmark-compare "compare-fs-$prefix.csv"
    echo "misc"
    node-benchmark-compare "compare-misc-$prefix.csv"
    echo "module"
    node-benchmark-compare "compare-module-$prefix.csv"
    echo "node:path"
    node-benchmark-compare "compare-path-$prefix.csv"
    echo "node:streams"
    node-benchmark-compare "compare-streams-$prefix.csv"
    echo "node:test"
    node-benchmark-compare "compare-test-runner-$prefix.csv"
    echo "URL"
    node-benchmark-compare "compare-url-$prefix.csv"
    echo "node:util"
    node-benchmark-compare "compare-util-$prefix.csv"
    echo "WebStreams"
    node-benchmark-compare "compare-webstreams-$prefix.csv"
    echo "zlib"
    node-benchmark-compare "compare-zlib-$prefix.csv"
}

# Run comparison for each version
for version in "${versions[@]}"; do
    run_comparison "$version"
done
