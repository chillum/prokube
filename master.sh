set -e
IP=`ifconfig enp0s8 |grep -oP 'inet \K\S+'` # private_network IP
kubeadm init --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=$IP |tee /vagrant/master.log # keep a copy for `kubeadm join`
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
