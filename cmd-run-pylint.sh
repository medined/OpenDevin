#!/bin/bash

pylint --py-version=3.10 --output-format=colorized --reports=y opendevin | tee pylint.hidden.log
echo "********************"
echo "See pylint.hidden.log for lint messages"
