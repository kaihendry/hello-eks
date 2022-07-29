    aws eks update-kubeconfig --name ex-hello-eks

https://argo-cd.readthedocs.io/en/stable/getting_started/

    kubectl create namespace argocd
    kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/core-install.yaml

Install argocd client

    argocd login --core

Run a service:

    kubectl config set-context --current --namespace=argocd
    argocd app create sla --repo https://github.com/kaihendry/sla.git --path k8s --dest-server https://kubernetes.default.svc --dest-namespace kai
    argocd app get sla
    argocd app sync sla
