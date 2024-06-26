#All Node
cd kubeadm-docker
bash setup_for_installing_dependencies.sh
cd command-setup
bash remote_desktop_setup.sh
bash setup_default_command.sh
cd ../cri-dockerd-setup
bash install_cri_dockerd.sh


#Control Plane Node
cd ../initialize-k8s
bash initialize.sh
cd ../calico-setup
bash calico.sh
cd ../post-setup
bash taint_control_plane_node.sh
cd ../ingress-nginx-setup
bash install.sh