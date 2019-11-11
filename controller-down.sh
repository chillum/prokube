#! /bin/sh
echo "Bringing down controller manager. Press Ctrl-C to bring it back."
trap "sudo mv /tmp/kube-controller-manager.yaml /etc/kubernetes/manifests/; exit 0" 2

sudo mv /etc/kubernetes/manifests/kube-controller-manager.yaml /tmp/
sleep 1m

echo -n "\a" # beep
echo "Check Prometheus for alerts."
sleep infinity
