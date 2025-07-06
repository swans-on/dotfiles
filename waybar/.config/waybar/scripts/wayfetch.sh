#!/bin/bash

KERNEL_VERSION=$(uname -r)

# Output as JSON
echo "{\"text\": \"Kernel: ${KERNEL_VERSION}\", \"tooltip\": \"Kernel: ${KERNEL_VERSION}\"}"
