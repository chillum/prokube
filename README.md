# k8s cluster with Prometheus

## Setup

Get Vagrant and VirtualBox, fire `vagrant up`. It's fully automated.

## Resources

* [Kubernetes dashboard](http://localhost:8080)
* [Prometheus](http://localhost:8081)

## Test cases for alerts

* Kube controller down: enter master and launch `/vagrant/controller-down.sh`
* CPU usage: enter any node and launch `/vagrant/load-cpus.sh`
* non-Pod CPU usage: enter any node and launch `/vagrant/load-cpu.sh`
