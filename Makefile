.PHONY: build install clean test

# Build the Go binary
build:
	go build -o profile ./cmd/profile

# Install the binary to the workspace root
install: build
	cp profile $(shell pwd)/profile

# Clean build artifacts
clean:
	rm -f profile
	go clean

# Run tests
test:
	go test ./...

# Run the binary directly
run:
	go run ./cmd/profile

