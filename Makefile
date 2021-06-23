# Common makefile commands & variables between projects
include .make/common.mk

## Set the distribution folder
ifndef DISTRIBUTIONS_DIR
	override DISTRIBUTIONS_DIR=./release
endif

## Not defined? Use default repo name which is the application
ifeq ($(REPO_NAME),)
	REPO_NAME="status"
endif

## Not defined? Use default repo owner
ifeq ($(REPO_OWNER),)
	REPO_OWNER="tonicpow"
endif

## Default branch
ifndef REPO_BRANCH
	override REPO_BRANCH="master"
endif

.PHONY: clean release test
