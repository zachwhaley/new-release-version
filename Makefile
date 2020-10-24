NAME := new-release-version
ORG := zachwhaley
VERSION := 2.0.0
ROOT_PACKAGE := main.go

BUILD_DIR ?= bin

all: test build

.PHONY: test
test:
	go test -v

.PHONY: build
build:
	go build -o $(BUILD_DIR)/$(NAME)

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
