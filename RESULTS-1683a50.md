# Results for 1683a50

## GHC Haskell with Spock
```
Running 10s test @ http://localhost:3000/asdfasdf
  2 threads and 10 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   666.65us  303.18us  13.65ms   95.17%
    Req/Sec     7.54k     0.95k    8.95k    54.95%
  151430 requests in 10.10s, 223.84MB read
Requests/sec:  14992.83
Transfer/sec:     22.16MB
```
## D with Vibe.d (LDC)
```
Running 10s test @ http://localhost:3002/asdfasdf
  2 threads and 10 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.27ms    1.28ms  24.61ms   88.74%
    Req/Sec     4.03k   623.09     6.43k    79.00%
  80338 requests in 10.02s, 158.97MB read
  Non-2xx or 3xx responses: 6
Requests/sec:   8019.56
Transfer/sec:     15.87MB
```
## D with Vibe.d (GDC)
```
Running 10s test @ http://localhost:3002/asdfasdf
  2 threads and 10 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.18ms    1.35ms  30.93ms   91.03%
    Req/Sec     4.37k     0.86k    7.61k    80.50%
  87061 requests in 10.01s, 172.27MB read
  Non-2xx or 3xx responses: 6
Requests/sec:   8693.83
Transfer/sec:     17.20MB
```
## Go with Gin
```
Running 10s test @ http://localhost:3000/asdfasdf
  2 threads and 10 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    12.21ms   57.10ms 502.26ms   96.40%
    Req/Sec     5.19k     1.56k    9.24k    73.40%
  98712 requests in 10.20s, 196.47MB read
Requests/sec:   9680.85
Transfer/sec:     19.27MB
```
