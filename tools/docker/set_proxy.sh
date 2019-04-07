cp ../../configs/docker/http-proxy.conf /etc/systemd/system/docker.service.d

cp ../../configs/docker/config.conf $HOME/.docker/
# Restart Docker
systemctl daemon-reload
systemctl restart docke