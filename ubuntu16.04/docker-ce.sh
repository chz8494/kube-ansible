scp apt-docker-ce k8s-1:/etc/apt/preferences.d/
scp apt-docker-ce k8s-2:/etc/apt/preferences.d/
scp apt-docker-ce k8s-3:/etc/apt/preferences.d/
scp apt-docker-ce k8s-slave-1:/etc/apt/preferences.d/
scp apt-docker-ce k8s-slave-2:/etc/apt/preferences.d/
scp apt-docker-ce k8s-slave-3:/etc/apt/preferences.d/
ssh k8s-1 "sh /home/ubuntu/add-repo-docker.sh"
ssh k8s-2 "sh /home/ubuntu/add-repo-docker.sh"
ssh k8s-3 "sh /home/ubuntu/add-repo-docker.sh"
ssh k8s-slave-1 "sh /home/ubuntu/add-repo-docker.sh"
ssh k8s-slave-2 "sh /home/ubuntu/add-repo-docker.sh"
ssh k8s-slave-3 "sh /home/ubuntu/add-repo-docker.sh"
ssh k8s-1 "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -"
ssh k8s-2 "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -"
ssh k8s-3 "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -"
ssh k8s-slave-1 "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -"
ssh k8s-slave-2 "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -"
ssh k8s-slave-3 "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -"

ssh k8s-1 "apt-get update && apt-get install docker-ce -y"
ssh k8s-2 "apt-get update && apt-get install docker-ce -y"
ssh k8s-3 "apt-get update && apt-get install docker-ce -y"
ssh k8s-slave-1 "apt-get update && apt-get install docker-ce -y"
ssh k8s-slave-2 "apt-get update && apt-get install docker-ce -y"
ssh k8s-slave-3 "apt-get update && apt-get install docker-ce -y"
