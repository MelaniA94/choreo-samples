Use template (Content Based Routing) to route requests depending on the content.

## Use case
When the service is invoked with data in a request, it returns data according to the content provided in the request. This template can be used to route requests depending on the content.

## Prerequisites
* Pull the template from central  
`bal new -t choreo/content_based_routing <newProjectName>`

## Run the template
Run the Ballerina project created by the service template by executing `bal run` from the root.

Once successfully executed, Listener will be started at port 8090. Then you need to invoke the service using the following curl command
```
$ curl http://localhost:8090/route -d '{"item":"employee"}' -H 'Content-Type: application/json'
```
Now service will be invoked and returns extracted data as  
```
{"id":"1", "firstName":"Andy", "lastName":"Cook", "departmentId":"1", "title":"Manager"}
```
