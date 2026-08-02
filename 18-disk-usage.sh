#!/bin/bash
DISK_USAGE=$(df -hT | grep -v Filesystem)
DISK_THRESHOLD=1