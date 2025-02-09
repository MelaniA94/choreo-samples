Use template (Custom Data Types) to create a custom data type and populate it with data received from a POST request.

## Use case
When the service is invoked with JSON data, the service will respond by mapping data fields to a custom data type. This template can be used to create a custom data type and populate it with data received from a POST request.

## Prerequisites
* Pull the template from central  
`bal new -t choreo/custom_data_types <newProjectName>`

## Run the template
Run the Ballerina project created by the service template by executing `bal run` from the root.

Once successfully executed, Listener will be started at port 8090. Then you need to invoke the service using the following curl command
```
$ curl http://localhost:8090/average_grade -d '{"studentId": "1874", "firstName": "Jane", "lastName":"Smith", "mathematics" : 85, "science" : 75, "arts":80}' -H "Content-Type:application/json"
```
Now service will be invoked and returns data of student for a given student Id by mapping it to a custom data type
```
{"studentId":"1874", "averageGrade":80.0}
```
