# Using curl

Making HTTP requests with curl

## GET with curl

```sh
# The most basic GET call
$ curl <url>
$ curl https://google.com

# Display Response Headers
$ curl -i https://swapi.co/api/people/2

# Add Headers to the request
$ curl -H "Authorization: Bearer 123" localhost:3000/api/posts
```

## POST with curl

```sh
$ curl -X POST -H "Content-Type: application/json" -d '{"title": "new post"}' localhost:3000/api/posts

# Display Response Headers
$ curl -i -X POST --data-urlencode title="new post" active="y" localhost:3000/api/posts

# Add Headers to the request
# with line break for readibility
$ curl -X POST \
       -H "Content-Type: application/json" \
       -d '{"title": "new post"}' \
       localhost:3000/api/posts

# Add Headers to the request
$ curl --location --request POST \
       -H "Content-Type: application/json" \
       -H "User-Agent: some_user_agent" \
       -d '{"title": "new post"}' \
       localhost:3000/api/posts
```

## Other Options

```sh
# Write large json responses to file instead
$ curl -iL https://google.com -o response.json

# Format the response. jsome is a global node module
$ curl -iL https://google.com | jsome

-i        # include response headers
-I        # return only response headers
-iL       # Follow redirects if the server is trying to redirect the request
-H        # Send headers in request
-X        # Change the HTTP method of the request
-d        # Pass a request body
-o        # Output the response to a file
-s        # Execution to be silent and without progress bar if any (like in case of storing to a file)
--data-urlencode    # Post in a url-encoded form
```

## Filtering Response

```sh
# Returns only first line of response headers
$ curl -I https://google.com | head -n 1

# Returns 2nd part of first line
$ curl -I https://google.com | head -n 1 | cut -d ' ' -f 2
```
