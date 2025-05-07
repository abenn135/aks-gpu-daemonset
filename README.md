# aks-gpu-daemonset

Daemonset to install a custom Linux kernel and customize the environment for GPU hardware. The daemonset is in hack/daemonset.yaml. Run it, then you'll need to restart the node (this is tricky to do from the daemonset itself).

```bash
kubectl debug node/<node-name> -it --image=mcr.microsoft.com/cbl-mariner/busybox:2.0
chroot /host
reboot
```
