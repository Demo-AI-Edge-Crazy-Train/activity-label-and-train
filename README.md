# Label and train activity

## Deployment

```
oc apply -k operators
# Wait for RHOAI operator installation
oc apply -k operators-instances
# Wait for RHOAI components deployment
oc kustomize --enable-helm manifests | oc apply -f -
```