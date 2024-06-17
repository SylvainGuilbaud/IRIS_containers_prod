# Example of using Web Gateway with 3 IRIS instances (EM, CD, preview)

## This is a simple docker-compose example that spins up four containers based on the 3 latest editions of IRIS + 1 container for the web gateway : 

* [IRIS EXTENDED MAINTENANCE](./docker-compose.yml)
* [IRIS CONTINUOUS DELIVERY](./docker-compose.yml)
* [IRIS DEVELOPER PREVIEW](./docker-compose.yml)
* [webgateway - the standalone Web Gateway container (Apache-based)](./docker-compose.yml)

## start/stop

### IRIS License (iris.key)

*NB : Before starting the containers, you need to first copy your own IRIS License into [./iris/iris.key](./iris/iris-x64.key)*

* [start.sh](./start.sh) - spins up all containers via docker-compose and 
    invokes iris/configure.sh in the iris containers
* [stop.sh](./stop.sh) - removes all containers

## configure.sh
* [iris/configure.sh](./iris/configure.sh) - configures the IRIS container's CSPConfigName

## IRIS Management Portal

With this pod, the user can access each instance's Management Portal immediately without relying on the private web server. If running on your local machine, use these URLs:
* [IRIS EM Management Portal](http://localhost:58880/iris-latest-em/csp/sys/UtilHome.csp)
* [IRIS CD Management Portal](http://localhost:58880/iris-latest-cd/csp/sys/UtilHome.csp)
* [IRIS PREVIEW Management Portal](http://localhost:58880/iris-latest-preview/csp/sys/UtilHome.csp)

## Web Gateway Management 
* [Web Gateway Management](http://localhost:58880/csp/bin/Systems/Module.cxw)

## IRIS APIs

With this pod, the user can access each instance's Management Portal immediately without relying on the private web server. If running on your local machine, use these URLs:
### API Atelier
* [IRIS EM API Atelier](http://localhost:58880/iris-latest-em/api/atelier/)
* [IRIS CD API Atelier](http://localhost:58880/iris-latest-cd/api/atelier/)
* [IRIS PREVIEW API Atelier](http://localhost:58880/iris-latest-preview/api/atelier/)
### API Management
* [IRIS EM API Management](http://localhost:58880/iris-latest-em/api/mgmnt/)
* [IRIS CD API Management](http://localhost:58880/iris-latest-cd/api/mgmnt/)
* [IRIS PREVIEW API Management](http://localhost:58880/iris-latest-preview/api/mgmnt/)
### IRIS Monitor Metrics
* [IRIS EM METRICS](http://localhost:58880/iris-latest-em/api/monitor/metrics)
* [IRIS CD METRICS](http://localhost:58880/iris-latest-cd/api/monitor/metrics)
* [IRIS PREVIEW METRICS](http://localhost:58880/iris-latest-preview/api/monitor/metrics)
### LICENSES
* [License Key EM](http://localhost:58880/iris-latest-em/csp/sys/mgr/%25CSP.UI.Portal.License.Key.zen)
* [License Key CD](http://localhost:58880/iris-latest-cd/csp/sys/mgr/%25CSP.UI.Portal.License.Key.zen)
* [License Key PREVIEW](http://localhost:58880/iris-latest-preview/csp/sys/mgr/%25CSP.UI.Portal.License.Key.zen)
### Management Portal
* [Management Portal EM](http://localhost:58880/iris-latest-em/csp/sys/UtilHome.csp)
* [Management Portal CD](http://localhost:58880/iris-latest-cd/csp/sys/UtilHome.csp)
* [Management Portal PREVIEW](http://localhost:58880/iris-latest-preview/csp/sys/UtilHome.csp)


## Sources
Special thanks to [Sarah Matthews](https://github.com/sgmatthews) and [Bob Kuszewski](https://github.com/kuszewski) for their [web gateway samples](https://github.com/intersystems-community/webgateway-examples)


## ADDITIONAL NOTES

See the Web Gateway configuration guide in official Documentation for general guidance:
https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GCGI_intro
