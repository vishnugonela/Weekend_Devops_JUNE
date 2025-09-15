#!/bin/bash
MY_VAR="HelloWorld"
export MY_ENV_VAR="I am available everywhere"
bash -c 'echo "Inside child shell -> MY_VAR = $MY_VAR, MY_ENV_VAR = $MY_ENV_VAR"'

