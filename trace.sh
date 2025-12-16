#!/bin/bash

./kern_log.sh | sed -u 's/^.*] //' > io_log

