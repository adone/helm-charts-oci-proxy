FROM cgr.dev/chainguard/wolfi-base

ARG TARGETPLATFORM
ENTRYPOINT ["/usr/bin/proxy"]
COPY $TARGETPLATFORM/proxy /usr/bin/

USER 65534
EXPOSE 9000

ENV PORT=9000
ENV USE_TLS=false
CMD ["registry", "serve"]
