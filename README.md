# Home Kubernetes initialisation repository

This repository contains the scripts and configuration files for setting up Kubernetes on premises at home.

The Kubernetes cluster is setup using standard [Arch Linux x86_64](https://archlinux.org/) and [Arch Linux ARM](https://archlinuxarm.org/) paired with [k0s](https://k0sproject.io/).

# Adding new nodes

First install Arch Linux x86_64 or ARM as appropriate on the node and setup a static DHCP reservation for the node using the home-terraform.

Next ensure that the Kubernetes Ansible role has been ran on the node.

Next add the configuration for the node to k0sctl.yaml

Then run:

```
k0sctl apply --config k0sctl.yaml
```

If this is a new cluster obtain the kubeconfig using:

```
k0sctl kubeconfig > kubeconfig
```
