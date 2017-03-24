# Dockerized spotify_token_swap tool

To run spotify_token_swap

```
docker run \
    -e CLIENT_ID=<...> \
    -e CLIENT_SECRET=<...> \
    -e CALLBACK_URL=<...> \
    -p 1234:1234 \
    procoders/spotify_token_swap
```

Do not forget to put your right credentials to env variables first!