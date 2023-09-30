# kairos-config

#### Currently Active: k3s-single-node

# Folder Structure

Each folder is for an example config I tested/am testing.
In the root is `auroraboot-config.yaml`, this is passed to the AuroraBoot
container. Sometimes the container is also passed more sensitive options such
as `p2p.network_id` and `p2p.network_token`.

The `manifests` folder in each folder is where additional manifests that should
be applied to the cluster are. Since I plan on using GitOps, these manifests
are strictly for only the things needed to get the cluster operational.

These are used in the `cloud_config` key like this:

```yaml
stages:
  boot:
    - name: "Add example manifest from this repo"
      downloads:
        - url: https://raw.githubusercontent.com/tyzbit/kairos-config/main/k3s-single-node/manifests/example.yaml
          path: /var/lib/rancher/k3s/server/manifests/example.yaml
```

Of course, this requires the file to already be committed to the repository.
The official docs mention using gists as well, same principle.

---

#### Tested and working

(this might give you an idea of which configs are up-to-date)

- **k3s-single-node**: A simple, single-node cluster for testing

---

#### Unfinished and untested

- **k3s**: A p2p k3s cluster
- **kubeadm**: A p2p k3s cluster
