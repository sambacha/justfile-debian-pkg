#!/usr/bin/make -f
# -*- makefile -*-

all:; update build git_build

build:; cargo build --bins --release --target x86_64-unknown-linux-gnu

update:; cargo update

git_build:: CARGO_NET_GIT_FETCH_WITH_CLI=true cargo build --bins --release --target x86_64-unknown-linux-gnu
