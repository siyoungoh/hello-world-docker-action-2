#!/bin/sh -l

# Use INPUT_<INPUT_NAME> to get the value of an input
GREETING="Hello, $INPUT_WHO_TO_GREET!"

# Use workflow commands to do things like set debug messages
echo "::notice file=entrypoint.sh,line=7::$GREETING"

# Ensure that $GITHUB_OUTPUT is set, or provide a default path
if [ -z "$GITHUB_OUTPUT" ]; then
  GITHUB_OUTPUT="/tmp/github_output.txt"
fi

# Write outputs to the $GITHUB_OUTPUT file
echo "time=$(date)" >>"$GITHUB_OUTPUT"

exit 0
