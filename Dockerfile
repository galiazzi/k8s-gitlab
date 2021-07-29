FROM dtzar/helm-kubectl
ENV HELM_EXPERIMENTAL_OCI 1
WORKDIR /home
ADD config.sh /usr/local/bin/k8s-gitlab-config
