# Kubernetes networking: Writing a CNI plugin from scratch
This repository holds the complete implementation of the examples seen in Kubecon Barcelona talk, 2019.

> Kubernetes networking: Writing a CNI plugin from scratch / Eran Yanay &mdash; [Video](https://www.youtube.com/watch?v=zmYxdtFzK6s&list=PLj6h78yzYM2PpmMAnvpvsnR4c27wJePh3&index=303&t=0s) | [Slides](https://speakerdeck.com/eranyanay/writing-a-cni-plugin-from-scratch) ]

# Prerequisits
* Two node K8s cluster. Kubeadm works just fine.
* Nodes IPs should be hardcoded into `init.sh`
* `demo.yaml` nodeSelector should be modified according to your cluster node names
* Modify `10-my-cni-demo.conf`, with `podcidr` field to correspond to the specific node pod cidr range. Can see podcidr range by running `kubectl describe node`. This should be modified for every node

# Installation
Deploy into a K8s cluster by following the next steps:
1. Copy `my-cni-demo` to `/opt/cni/bin/my-cni-demo`
3. Copy the modified config file to `/etc/cni/net.d/`
4. Copy the modified init script to each node, and run it at least once after restart. The changes it perform are not persistent.

# Usage
Apply the demo config yaml by running `kubectl apply -f demo.yaml`
