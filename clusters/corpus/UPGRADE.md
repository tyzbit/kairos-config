# Upgrading nodes

## Control Plane and Workers

- Drain the node
- Replace the source parameter as needed, it can be to a custom image as well
  `kairos-agent upgrade --source oci://quay.io/kairos/kairos-debian:v2.4.1-k3sv1.27.3-k3s1`
- Let it reboot, it may not find the drive at first, if so reboot again
- It will come back up and rejoin the cluster with the same node name as before
- Uncordon the node if it is `Ready`
