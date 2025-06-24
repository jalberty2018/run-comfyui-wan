#!/bin/bash

# Ensure we have /workspace in all scenarios
mkdir -p /workspace

if [[ ! -d /workspace/provisioning ]]
then
	mv /provisioning /workspace
	# Set permissions right for directory
    chmod -R 777 /workspace/provisioning
else
	rm -rf /provisioning
fi

# Linking
ln -s /workspace/provisioning /provisioning
