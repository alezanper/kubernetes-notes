# create a job with specific command and image
export do="--dry-run=client -o yaml" 


kubectl -n <namespace> create job <jobname> --image=busybox:1.31.0 $do > file -- sh -c "sleep 2 && echo done"

# get pod and job associated
kubectl -n <namespace> get pod, job | grep <jobname>

# describe job
kubectl -n <namespace> describe job <jobname>
