eksctl utils associate-iam-oidc-provider \
--cluster udacity-cluster \
--approve \
--region=us-east-2

eksctl create iamserviceaccount --name cluster-autoscaler --namespace kube-system \
--cluster udacity-cluster --attach-policy-arn "arn:aws:iam::452721467222:policy/udacity-k8s-autoscale" \
--approve --region us-east-2

helm install kube-ops-view \
stable/kube-ops-view \
--set service.type=LoadBalancer \
--set rbac.create=True