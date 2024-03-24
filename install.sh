#!/bin/sh

go install github.com/protocolbuffers/protobuf/cmd/protoc-gen-go@latest

export PATH="${PATH}:${HOME}/go/bin"
mkdir -p "api"
protoc --go_out=./api --go_opt=module=github.com/rish1988/satnet-api proto/satnet-registry.proto
go mod tidy