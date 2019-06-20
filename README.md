Dockerized GraphiQL UI with configurable API endpoint support 

# Build image
```
docker build -t plutoz/graphiql:latest .
```

# Run image
```
docker run --name graphiql -p 8080:4000 -e API_ENDPOINT=<Optional URL of remote endpoint>  plutoz/graphiql
```
After image started, GraphiQL will be available on http://localhost:8080/graphiql

# Run with docker compose
```
graphiql:
    container_name: graphiql
    image: plutoz/graphiql
    ports:
      - 8080:4000
    environment:
      API_ENDPOINT: http://localhost:8102/graphql
```

# Enviroment variables
### API_ENDPOINT (Optional)
Specifies a remote endpoint as a default URL when a new tab will be opened on GraphiQL UI.