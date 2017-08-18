# Spotify Token Swap Tool in Docker

To run the tool through docker use the command:

```
docker run \
    -e ENCRYPTION_SECRET=<...> \
    -e CLIENT_ID=<...> \
    -e CLIENT_SECRET=<...> \
    -e CALLBACK_URL=<...> \
    -p 1234:1234 \
    procoders/spotify_token_swap-docker
```

The service will then be available at `<DOCKER_HOST>:1234`, which on your local
machine should be `localhost:1234` and on a server with `10.10.10.10` as IP
address the service should run on `10.10.10.10:1234` inside the network.

## Environment Variables

The container **MUST** have the right credentials to work.
So do not forget to put the right credentials to env variables first!
It follows an overview of each environment variable of the container.

### ENCRYPTION_SECRET

The ENCRYPTION_SECRET allows to pass the `refresh_token` to the client without
compromising on security.

> REMEMBER: To decrypt the `refresh_token` inside your application before usage!

### ENCRYPTION_DISABLED

The encryption and decryption of the `refresh_token` can hinder development and
lead to hard to find bugs inside the system.

> To iterate quicker it might be reasonable to start with encryption disabled.

### CLIENT_ID

This is the client ID from the [Spotify developer website.](https://developer.spotify.com/)

### CLIENT_SECRET

This is the client secret from the [Spotify developer website.](https://developer.spotify.com/)

### CALLBACK_URL

The callback URL will be invoked by the Spotify API method after authentication
is finished on Spotify.

> NOTE: The CALLBACK_URL value has to be present on the [Spotify developer website.](https://developer.spotify.com/)

## How to use in iOS

Once the service is running, pass the public URI to the token swap method.
If you run it with default settings on your local machine this should be
`http://localhost:1234/swap`.
It follows the token swap method in the iOS SDK:

```
  NSURL *swapServiceURL = [NSURL urlWithString:@"http://localhost:1234/swap"];

  -[SPAuth handleAuthCallbackWithTriggeredAuthURL:url
                    tokenSwapServiceEndpointAtURL:swapServiceURL
                                         callback:callback];
```

## Development Guide

To run the service, enter your client ID, client secret and client callback URL
into the environment or script and run the project.

```
 $ ruby spotify_token_swap.rb
```

The logs should then show inside the console on STDOUT and STDERR.
