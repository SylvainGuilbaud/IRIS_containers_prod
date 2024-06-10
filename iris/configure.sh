cat << EOF | iris session iris

do ##class(%SYSTEM.CSP).SetConfig("CSPConfigName","$HOSTNAME")
zn "%sys"
do ##class(Security.Users).UnExpireUserPasswords("*")
halt
EOF