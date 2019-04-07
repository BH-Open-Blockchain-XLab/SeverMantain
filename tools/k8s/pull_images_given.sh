set -e

# Check version in https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-init/
# Search "Running kubeadm without an internet connection"
# For running kubeadm without an internet connection you have to pre-pull the required master images for the version of choice:


GCR_URL=k8s.gcr.io
ALIYUN_URL=docker.io/mirrorgooglecontainers

imageName=$1


docker pull $ALIYUN_URL/$imageName
docker tag  $ALIYUN_URL/$imageName $GCR_URL/$imageName
docker rmi $ALIYUN_URL/$imageName


