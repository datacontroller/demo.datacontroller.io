
#!/usr/bin/env bash

demoloc=$(pwd)

rm -rf docs
cp -r ../datacontroller/client/dist docs
echo 'demo.datacontroller.io' > docs/CNAME

sed -i -e 's/serverurl=""/serverurl="https:\/\/sas.4gl.io:5006"/g' docs/index.html
rm docs/index.html-e
cd ../datacontroller/sas/mocks
sasjs cbd -t dcdemo

cd $demoloc
