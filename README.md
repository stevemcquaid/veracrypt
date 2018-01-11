# Crypt - Veracrypt

This is a utility repo to make it easy to create, mount, and unmount veracrypt volumes on Mac. Support for Docker is ongoing.

## Mac features:
  - [x] Create Normal Volume
  - [x] Create Hidden Volume
  - [x] Mount Normal Volume
  - [x] Mount Hidden Volume
  - [x] Unmount Normal Volume
  - [x] Unmount Hidden Volume

## Docker features:
  - [x] Create Normal Volume
  - [x] Create Hidden Volume
  - [ ] Mount Normal Volume
  - [ ] Mount Hidden Volume
  - [ ] Unmount Normal Volume
  - [ ] Unmount Hidden Volume

# Usage
  - `make build` - Build container
  - `make create` - Create volume
  - `make create-hidden` - Create hidden volume
  - `make mount` - Mount volume
  - `make mount-inner` - Mount inner-volume
  - `make mount-outer` - Mount outer-volume
  - `make push` - Push container
  - `make shell` - Enter a bash shell within Docker container

