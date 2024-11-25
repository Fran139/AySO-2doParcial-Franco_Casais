ssh-keygen
cat .ssh/id_rsa.pub
Clave en $HOME/.ssh/authorized.keys
git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git
ansible-playbook -i inventory playbook.yml
sudo apt list --installed |grep apache
