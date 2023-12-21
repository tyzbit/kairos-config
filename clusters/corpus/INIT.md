# Cluster Init

### Auroraboot

Run an AuroraBoot container in the same network as the boxes with these arguments:

`--cloud-config https://raw.githubusercontent.com/tyzbit/kairos-config/main/clusters/corpus/cloud-config.yaml https://raw.githubusercontent.com/tyzbit/kairos-config/main/clusters/corpus/auroraboot-config.yaml`

### How to Install

- Boot the machine on the same network as AuroraBoot

It will disable the first/onboard LAN card if there is a second one installed,
but from my experience, add-on LAN cards don't typically netboot so you'll need
the onboard card connected for the first netboot, but you can disconnect it when
it reboots.
