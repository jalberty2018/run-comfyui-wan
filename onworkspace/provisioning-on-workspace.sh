#!/bin/bash

# Ensure we have /workspace in all scenarios
mkdir -p /workspace

if [[ ! -d /workspace/provisioning ]]
then
	mv /provisioning /workspace
else
	rm -rf /provisioning
fi

# Linking
ln -s /workspace/provisioning /provisioning
