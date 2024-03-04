<!DOCTYPE html>
<html>
<head>
    <title>Get Client IP Address</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


    <script>
        $(document).ready(function() {
            $("#GetClientIpAddressServlet").click(function() {
                $.ajax({
                    url: "http://localhost:8080/FindIp/getClientIPAddress",
                    type: "GET",
                    success: function(response) {
                        alert("Client IP Address: " + response);
                    },
                    error: function(xhr, status, error) {
                        alert("Error: " + error);
                    }
                });
            });
        });

        $(document).ready(function() {
            $("#IpUtil").click(function() {
                $.ajax({
                    url: "http://localhost:8080/FindIp/IpUtilServlet",
                    type: "GET",
                    success: function(response) {
                        alert("Client IP Address: " + response);
                    },
                    error: function(xhr, status, error) {
                        alert("Error: " + error);
                    }
                });
            });
        });
    </script>
</head>

<body>
<h2>Hello World!</h2>
<button id="GetClientIpAddressServlet">get ip address1</button>
<button id="IpUtil">get ip address2</button>

</body>
</html>
