# Cluster Init

### Auroraboot

Run an AuroraBoot container in the same network as the boxes with these arguments:

`--cloud-config https://raw.githubusercontent.com/tyzbit/kairos-config/main/clusters/corpus/cloud-config.yaml https://raw.githubusercontent.com/tyzbit/kairos-config/main/clusters/corpus/auroraboot-config.yaml`

### Installs

- Boot machines on the network.
  - With the 7040s, this means using the onboard LAN.
- Let it install
  - It will try to reboot but fail.
  - Power cycle the machine, wait 15 seconds and then power cycle it again.

The cluster should come up and bootstrap with Flux and start deploying everything
