#!/bin/bash

VLOGPATH=/run

cd $VLOGPATH
D=`date -d "1 day ago" '+%Y%m%d'`
tar cfvz $D.tgz $D
rm -rf $D
