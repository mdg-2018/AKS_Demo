#!/bin/bash
GROUP=""
CLUSTERNAME=""
NAMESPACE=""
FIRSTNAME=""
LASTNAME=""
USERNAME=""
PASSWORD=""

# load development env - just ignore this, please don't create a file called "dev-env.sh"
if test -f "./dev-env.sh"; then
    . ./dev-env.sh
fi