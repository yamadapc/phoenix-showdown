# Results for `6b10b7b`

## GHC Haskell with Spock
```
Running 10s test @ http://localhost:3000/asdfasdf
  2 threads and 10 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     0.95ms    4.15ms 104.68ms   98.93%
    Req/Sec     8.26k     1.07k    9.66k    94.06%
  165939 requests in 10.10s, 245.29MB read
Requests/sec:  16431.42
Transfer/sec:     24.29MB
```
## D with Vibe.d (LDC)
```
Running 10s test @ http://localhost:3002/asdfasdf
  2 threads and 10 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.22ms    1.26ms  24.47ms   89.71%
    Req/Sec     4.17k   846.66     8.00k    85.50%
  83042 requests in 10.02s, 164.32MB read
  Non-2xx or 3xx responses: 6
Requests/sec:   8285.53
Transfer/sec:     16.39MB
```
## D with Vibe.d (GDC)
```
Running 10s test @ http://localhost:3002/asdfasdf
  2 threads and 10 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.27ms    1.61ms  35.31ms   91.89%
    Req/Sec     4.25k     0.93k    7.37k    74.00%
  84808 requests in 10.02s, 167.81MB read
  Non-2xx or 3xx responses: 6
Requests/sec:   8460.10
Transfer/sec:     16.74MB
```
## Go with Gin
```
Running 10s test @ http://localhost:3000/asdfasdf
  2 threads and 10 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     8.72ms   38.71ms 377.28ms   96.31%
    Req/Sec     4.55k     1.29k    8.03k    75.00%
  88045 requests in 10.05s, 175.24MB read
Requests/sec:   8761.58
Transfer/sec:     17.44MB
```
