rm -Rf ./cpa-auto-deployer

#pull kubernetes config file
git clone https://github.com/JamesShieh0510/cpa-auto-deployer.git

kubectl delete all,secrets,jobs,persistentvolumeclaims --selector='heptio.com/example=lamp'

#建立kubernetes pod
kubectl create -f ./cpa-auto-deployer/
