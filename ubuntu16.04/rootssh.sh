ssh ubuntu@k8s-1 -t sudo  cp .ssh/authorized_keys /root/.ssh
ssh ubuntu@k8s-2 -t sudo  cp .ssh/authorized_keys /root/.ssh
ssh ubuntu@k8s-3 -t sudo  cp .ssh/authorized_keys /root/.ssh
ssh ubuntu@k8s-slave-1 -t sudo  cp .ssh/authorized_keys /root/.ssh
ssh ubuntu@k8s-slave-2 -t sudo  cp .ssh/authorized_keys /root/.ssh
ssh ubuntu@k8s-slave-3 -t sudo  cp .ssh/authorized_keys /root/.ssh
