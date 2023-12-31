# kairos-config

#### Currently Active: clusters/corpus

# Folder Structure

Each folder in `testing` is for an example config I tested/am testing.
In the root is `auroraboot-config.yaml`, this is passed to the AuroraBoot
container. Sometimes the container is also passed more sensitive options such
as `p2p.network_id` and `p2p.network_token`.

The `manifests` folder in each folder is where additional manifests that should
be applied to the cluster are. Since I plan on using GitOps, these manifests
are strictly only for the things needed to get the cluster operational.

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
The official docs mention using gists as well, which is the same principle.

Also, I run a little webserver on my NAS for sensitive things so that I can
continue to commit the rest of my code here. It's a pattern I recommend, except
it's not great security-wise. Kairos being experimental as it is, it's fine
for me for now.

---

#### Tested and working

(this might give you an idea of which configs are up-to-date)

#### Clusters

- **corpus**: This is my main cluster and the config is tested and should be working.

#### Testing

- **k3s-single-node**: A simple, single-node cluster for testing
- **k3s**: A p2p k3s cluster

---

#### Unfinished and untested

- **kubeadm**: Attempting to use kubeadm instead of k3s, may never be finished

# Upgrades

`sudo kairos-agent upgrade [version]`

**Ensure upgrade applied successfully**

`sudo kairos-agent upgrade [version] --recovery`

**Ensure recovery upgraded successfully**

Then upgrade your AuroraBoot config for any new nodes that are added later.
