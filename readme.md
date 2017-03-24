# Dockerized spotify_token_swap tool

To run spotify_token_swap

```
docker run \
    -e CLIENT_ID=0015d41a722f4cae9725096d057c4ee8 \
    -e CLIENT_SECRET=9d2e1032e626425a902bd7fe79bd8914 \
    -e CALLBACK_URL=testshema://callback \
    -p 1234:1234 \
    procoders/spotify_token_swap
```

Do not forget to put your right credentials to env variables first!