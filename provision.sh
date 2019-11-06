set -e
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg |apt-key add
apt-add-repository 'deb http://apt.kubernetes.io/ kubernetes-xenial main' # weird, but they don't have the bionic repo
apt-get install docker.io kubectl kubelet kubeadm -y
