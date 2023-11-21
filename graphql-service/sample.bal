import ballerina/graphql;

# A service representing a network-accessible GraphQL API
service / on new graphql:Listener(8090) {
    resource function get greeting(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }

}

service /greeting2 on new graphql:Listener(9090) {

  resource function get greeting2(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}


