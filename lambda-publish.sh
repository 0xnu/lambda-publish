#!/bin/bash
# aws lambda list-functions
# sudo ./lambda-publish.sh
# This script will upload a new version of the lambda

rm code.zip
zip  code.zip handler.js index.js package.json package-lock.json node_modules/*

(cd venv/lib/python2.7/site-packages/ ; zip -r ../../../../code.zip *)

aws lambda update-function-code --function-name tripplanner --zip-file fileb:///Users/.../code.zip --publish