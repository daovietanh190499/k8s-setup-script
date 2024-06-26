echo "export KUBECONFIG=/etc/kubernetes/admin.conf" >> ~/.bashrc
echo "alias k=kubectl" >> ~/.bashrc
source ~/.bashrc
echo "export KUBECONFIG=/etc/kubernetes/admin.conf" >> ~/.zshrc
echo "alias k=kubectl" >> ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions