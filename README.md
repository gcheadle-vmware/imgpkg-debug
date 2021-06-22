Example adapted from https://github.com/andrew-su/imgpkg-debug.
Replicates issue from https://github.com/vmware-tanzu/carvel-imgpkg/issues/159

To run this example, first sign into docker (I was using the k8slt account),
then run ./test.sh

You can see the bug being reproduced when the SHAs of the bundle in staging.lock and
release.lock do not match, in fact you should see that the relase.lock points to the 
nested bundle referenced in the bundle that was just pushed. 
