# Example of using Web Gateway with 3 IRIS instances (EM, CD, preview)

## This is a simple docker-compose demo that spins up four containers: 

* [iris EXTENDED MAINTENANCE](./docker-compose.yml)
* [iris-test CONTINUOUS DELIVERY](./docker-compose.yml)
* [iris-dev DEVELOPER PREVIEW](./docker-compose.yml)
* [webgateway - the standalone Web Gateway container (Apache-based)](./docker-compose.yml)

## How to run it

### IRIS License (iris.key)
Before starting the containers, you need to first copy your own IRIS License into [./iris/iris.key](./iris/iris.key)


* [start.sh](./start.sh) - spins up all containers via docker-compose and 
    invokes iris/configure.sh in the iris containers
* [stop.sh](./stop.sh) - removes all containers
* [iris/configure.sh](./iris/configure.sh) - configures the IRIS container's CSPConfigName

## IRIS Management Portal

With this pod, the user can access each instance's Management Portal immediately without relying on the private web server. If running on your local machine, use these URLs:
* [IRIS Management Portal](http://localhost:8888/iris/csp/sys/UtilHome.csp)
* [IRIS TEST Management Portal](http://localhost:8888/iris-test/csp/sys/UtilHome.csp)
* [IRIS DEV Management Portal](http://localhost:8888/iris-dev/csp/sys/UtilHome.csp)

## Web Gateway Management 
* [Web Gateway Management](http://localhost:8888/csp/bin/Systems/Module.cxw)

## IRIS APIs

With this pod, the user can access each instance's Management Portal immediately without relying on the private web server. If running on your local machine, use these URLs:
### API Atelier
* [IRIS API Atelier](http://localhost:8888/iris/api/atelier/)
* [IRIS TEST API Atelier](http://localhost:8888/iris-test/api/atelier/)
* [IRIS DEV API Atelier](http://localhost:8888/iris-dev/api/atelier/)
### API Management
* [IRIS API Management](http://localhost:8888/api/mgmnt/)
* [IRIS TEST API Management](http://localhost:8888/iris-test/api/mgmnt/)
* [IRIS DEV API Management](http://localhost:8888/iris-dev/api/mgmnt/)
### IRIS Monitor Metrics
* [IRIS METRICS](http://localhost:8888/api/monitor/metrics)
* [IRIS TEST METRICS](http://localhost:8888/iris-test/api/monitor/metrics)
* [IRIS DEV METRICS](http://localhost:8888/iris-dev/api/monitor/metrics)



## Sources
Special thanks to [Sarah Matthews](https://github.com/sgmatthews) and [Bob Kuszewski](https://github.com/kuszewski) for their [web gateway samples](https://github.com/intersystems-community/webgateway-examples)


## ADDITIONAL NOTES

See the Web Gateway configuration guide in official Documentation for general guidance:
https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GCGI_intro
