(: test content having a content type ending with +xml, i.e. image/svg+xml :)
import module namespace http = "http://expath.org/ns/http-client";
declare namespace h = "http://expath.org/ns/http-client";

variable $req := <h:request method="GET"
               href="http://zorbatest.lambda.nu:8080/http-test-data/basic-auth/example.svg"
               auth-method="Basic"
               send-authorization="true"
               username="zorba"
               password="blub"/>;

variable $http-res := http:send-request($req, ());

$http-res[2]

