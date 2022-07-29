#!/bin/sh
echo { \"version\": \"$(git describe --tags --always --dirty)\"}
