# Upgrading nodes

## Control Plane and Workers

- Drain the node
- Replace the source parameter as needed, it can be to a custom image as well
  `kairos-agent upgrade --source oci://quay.io/kairos/debian:bookworm-standard-amd64-generic-v2.4.3-k3sv1.28.2-k3s1`

_The node will reboot_

- Uncordon the node once it is `Ready`
- Rerun the previous command but with `--recovery` if everything you test on
  the node looks good. The node will not reboot.
