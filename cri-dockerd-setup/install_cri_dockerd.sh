wget https://github.com/Mirantis/cri-dockerd/releases/download/v0.3.14/cri-dockerd-0.3.14.amd64.tgz
tar xvf cri-dockerd-0.3.14.amd64.tgz
sudo mv ./cri-dockerd/cri-dockerd /usr/local/bin/cri-dockerd 
rm cri-dockerd-0.3.14.amd64.tgz
rm -rf ./cri-dockerd

sudo mv cri-dockerd.socket cri-dockerd.service /etc/systemd/system/
sudo sed -i -e 's,/usr/bin/cri-dockerd,/usr/local/bin/cri-dockerd,' /etc/systemd/system/cri-dockerd.service
systemctl daemon-reload
systemctl enable cri-dockerd.service
systemctl enable --now cri-dockerd.socket