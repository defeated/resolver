# Resolver

A micro web app for resolving an IP address to a DNS hostname.

## Output

```
curl -i localhost
```

```
`content-type: application/json`
{"ip":"66.31.216.135","host":"c-66-31-216-135.hsd1.ma.comcast.net"}
```

or

```
curl -i localhost/?callback=jjjj
```

```
`content-type: application/javascript`
jjjj({"ip":"66.31.216.135","host":"c-66-31-216-135.hsd1.ma.comcast.net"})
```
