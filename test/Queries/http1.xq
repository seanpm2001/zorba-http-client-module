import module namespace http = "http://expath.org/ns/http-client";

variable $res := 
http:send-request((), "http://zorbatest.lambda.nu:8080/http-test-data/http1.xml");

$res[2]

