mc alias set riviera https://minio-s3-minio.DOMAIN_NAME admin crazytrain123!
for i in {1..40};
do
    mc admin user add riviera user$i minio123;
    sed "s/USER_ID/user$i/g" policy.json > tmp.json;
    mc admin policy create riviera user$i tmp.json;
    mc admin policy attach riviera user$i --user user$i;
    mc anonymous set download riviera/user$i;
done;
