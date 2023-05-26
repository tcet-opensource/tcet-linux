#!/bin/bash

# etcd
curl -LJO https://github.com/tcet-opensource/tcet-linux-applications/raw/main/x86_64/etcd-3.5.8-1-x86_64.pkg.tar.zst

# Install the package
sudo pacman -U etcd-3.5.8-1-x86_64.pkg.tar.zst --noconfirm
# Clean up the package file
sudo rm  etcd-3.5.8-1-x86_64.pkg.tar.zst

# Rest of dependencies of kubernetes
sudo pacman -S helm --noconfirm     
sudo pacman -S kubectl --noconfirm 
sudo pacman -S containerd --noconfirm 
yes | sudo pacman -S kubelet 
sudo pacman -S kubeadm --noconfirm 
sudo pacman -S kube-apiserver --noconfirm 
sudo pacman -S kube-proxy --noconfirm 
sudo pacman -S kube-controller-manager --noconfirm 
sudo pacman -S kube-scheduler --noconfirm 

# Enabling and starting container and kubelet service
sudo systemctl enable containerd.service 
sudo systemctl start containerd.service 
sudo systemctl enable kubelet.service
sudo systemctl start kubelet.service 

sudo kubeadm init
