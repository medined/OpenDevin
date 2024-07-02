#!/bin/bash

pylint --output-format=colorized --reports=y opendevin | tee pylint.hidden.log
echo "********************"
echo "See pylint.hidden.log for lint messages"

