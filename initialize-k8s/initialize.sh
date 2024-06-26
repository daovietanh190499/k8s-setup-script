sudo swapoff -a
iptables -F
iptables --flush
iptables -tnat --flush
kubeadm init --pod-network-cidr=10.96.0.0/12 --cri-socket=unix:///var/run/cri-dockerd.sock