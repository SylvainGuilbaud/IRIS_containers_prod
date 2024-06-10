# Example of using Web Gateway with 3 IRIS instances (EM, CD, preview)

## This is a simple docker-compose demo that spins up four containers: 

* iris EXTENDED MAINTENANCE 
* iris-test CONTINUOUS DELIVERY
* iris-dev DEVELOPER PREVIEW 
* webgateway - the standalone Web Gateway container (Apache-based)

## RUN

* start.sh - spins up all containers via docker-compose and 
    invokes iris/configure.sh in the iris containers
* stop.sh - removes all containers
* iris/configure.sh - configures the IRIS container's CSPConfigName

And a parameters.cfg file.

With this pod, the user can access each instance's Management Portal immediately without relying on the private web server. If running on your local machine, use these URLs:
http://localhost:8882/iris1/csp/sys/UtilHome.csp
http://localhost:8882/iris2/csp/sys/UtilHome.csp

### Sources
Special thanks to [Sarah Matthews](https://github.com/sgmatthews) and [Bob Kuszewski](https://github.com/kuszewski) for their [web gateway samples](https://github.com/intersystems-community/webgateway-examples)


## ADDITIONAL NOTES

See the Web Gateway configuration guide in official Documentation for general guidance:
https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GCGI_intro
