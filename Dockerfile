FROM gcr.io/distroless/static:latest
LABEL maintainers="Kubernetes Authors"
LABEL description="CSI External Snapshotter"

ARG binary=./bin/csi-snapshotter

COPY ${binary} csi-snapshotter
ENTRYPOINT ["/csi-snapshotter"]
