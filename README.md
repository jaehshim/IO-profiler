# Logging I/O Commands
I/O command logging can be toggled via the proc filesystem.  
Logging is **disabled by default**. To enable logging, write any value to the debug entry and then run your benchmark:
```
# echo 1 > /proc/nvmev/profile
# ./run_your_benchmark.sh
```

After the benchmark completes, disable logging to retrieve the collected logs.
When logging is disabled, NVMeVirt prints all buffered log entries to the kernel log.
```
# ./trace.sh

(in another terminal)
# echo 1 > /proc/nvmev/profile
```

# Profiling
We currently provide two plotting scripts for analyzing I/O behavior.  
- **`plot_access_pattern.py`** visualizes the access pattern of I/O commands.  
  - **X-axis:** time  
  - **Y-axis:** starting LBA

- **`plot_latency_distribution.py`** plots the latency distribution of read commands.  
  - **X-axis:** latency ranges  
  - **Y-axis:** number of commands in each range  
  - For ease of analysis, the overall latency range is divided into 20 bins.


To run the profiling scripts:
```
$ python3 plot_access_pattern.py
$ python3 plot_latency_distribution.py
```
