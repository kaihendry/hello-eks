    aws eks update-kubeconfig --name hello-eks

    ./setup-argocd.sh

Install argocd client

    argocd login --core

Accessing [Web user interface](https://argo-cd.readthedocs.io/en/stable/getting_started/#port-forwarding)

    kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
    kubectl port-forward svc/argocd-server -n argocd 8080:443
