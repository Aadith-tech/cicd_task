FROM nginx:alpine

# Install vulnerable packages for testing Trivy scan
RUN apk add --no-cache \
    openssh-client=8.6_p1-r0 \
    curl=7.80.0-r0 \
    wget=1.21.1-r0 \
    libssl1.1=1.1.1k-r0 \
    libcrypto1.1=1.1.1k-r0

COPY ./html /usr/share/nginx/html
