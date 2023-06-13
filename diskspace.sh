#!/bin/bash
df -h . | awk -F " " '{print $(NF-1)}'
