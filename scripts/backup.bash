#!/bin/bash
export KUBECONFIG=/home/ubuntu/.kube/config
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
PREFIX=`dirname $0`/mysql.dump


i=900
while [ $i -ge 0 ] ; do 
	if [ -f $PREFIX.$i.gz ] ; then 
		mv $PREFIX.$i.gz $PREFIX.$(($i+1)).gz
	fi
	let i--
done

kubectl exec deployment.apps/osticket-mysql -t -i -- /usr/bin/mysqldump -u root -psecret osticket |gzip > $PREFIX.0.gz
