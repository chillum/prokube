set -e
IP=`ifconfig enp0s8 |grep -oP 'inet \K\S+'` # private_network IP
kubeadm init --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=$IP |tee /vagrant/master.log # keep a copy for `kubeadm join`
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
# This will schedule Dashboard and Prometheus on master, as node isn't provisioned at this moment.
# Prometheus will fail to fit into master's RAM, so it will be re-scheduled to node.
for i in dashboard prometheus; do
    kubectl apply -f /vagrant/${i}.yml
done
