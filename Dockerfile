FROM golang:alpine as builder

# Install dependencies and build the binaries
RUN apk add --no-cache \
    git \
    make \
&&  go get -v -u github.com/btcsuite/btcwallet/cmd/dropwtxmgr

# Start a new, final image
FROM alpine as final

# Define a root volume for data persistence
VOLUME /root/.lnd

# Add bash and ca-certs, for quality of life and SSL-related reasons
RUN apk --no-cache add \
    bash \
    ca-certificates

# Copy the binary from the builder image
COPY --from=builder /go/bin/dropwtxmgr /bin/
COPY "docker-entrypoint.sh" .


ENTRYPOINT ["/docker-entrypoint.sh"]
