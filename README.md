k8s-gitlab
---

Docker para auxilizar nas operações com Kubernetes pelo gitlab CI/CD

Necessario ter as seguintes variáveis de ambiente:

* K8S_SERVER - Host do cluster
* K8S_CERTIFICATE - Certificado para acesso
* K8S_USER_TOKEN - Token de atutenticação

Disponibilizadas automaticamenteo pelo gitlab:

* CI_REGISTRY_PASSWORD
* CI_REGISTRY
* CI_REGISTRY_USER