FROM python:3.7-alpine AS builder
RUN apk update && apk upgrade && apk add build-base
COPY . /soppi
WORKDIR /soppi
RUN mkdir -p dist
RUN pip install -r requirements.txt
RUN make zipapp

FROM python:3.7-alpine
COPY --from=builder /soppi/dist /soppi

