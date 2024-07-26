mc alias set riviera https://minio-s3-minio.apps.riviera-dev-2024.sandbox2830.opentlc.com admin crazytrain123!
for i in {1..40};
do
    mc admin policy detach riviera user$i --user user$i;
    mc admin policy rm riviera user$1;
done;
