# Writing a CNI plugin from scratch
This repository holds the complete implementation of the examples seen in Kubecon Barcelona talk, 2019.

> Writing a CNI plugin from scratch / Eran Yanay &mdash; [Slides](https://speakerdeck.com/eranyanay/going-infinite-handling-1m-websockets-connections-in-go) ]


# Usage
`init.sh` is a sparse implemention of a daemon. IPs are hardcoded and should be changed according to k8s deployment params and node IPs

`my-cni-demo` - is the CNI plugin. Should be located in `/opt/cni/bin/my-cni-demo`

`10-my-cni-demo.conf` - is the CNI plugin configuration file. Should be located in `/etc/cni/net.d/10-my-cni-demo.conf`
