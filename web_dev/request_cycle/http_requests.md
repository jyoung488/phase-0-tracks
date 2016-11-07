# Release 0

1. What are some common HTTP status codes?
  * 200 - the request was received, understood, and accepted
  * 301 - the request is being redirected to a new permanent location
  * 403 - request received but refusing to fulfill it
  * 404 - resource requested was not found
  * 500 - internal server error
  * 502 - bad gateway, invalid response from the server

2. What is the difference between a GET request and a POST request? When might each be used?
  * The GET request retrieves the information from the location listed so to visit a website to be able to view it uses a GET method.
  * The POST method is used to send information to the origin server, like uploading a file or posting on a message board.
3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
  * A cookie contains small data that a server sends to a user's browser that can be stored and used again later. It allows for session management (staying logged into an account, saving shopping carts), personalization (preferences for Google homepage, for instance), and tracking (websites viewed, targeted ads).
  * When receiving an HTTP request, a server can also send along a cookie request.