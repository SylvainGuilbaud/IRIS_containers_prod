cat << EOF | iris session iris

do ##class(%SYSTEM.CSP).SetConfig("CSPConfigName","$HOSTNAME")
zn "%sys"
do ##class(Security.Users).UnExpireUserPasswords("*")
do ##class(%EnsembleMgr).EnableNamespace("USER")
halt
EOF