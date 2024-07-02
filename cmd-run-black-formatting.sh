#!/bin/bash

#
# 2024-07-02 Currently there are two places that use v3.10
# python syntax. That's why the target version is set to 3.10.
#
# When https://github.com/OpenDevin/OpenDevin/issues/2735 is resolved,
# the target version parameter can be removed.

black --target-version py310 .

echo "*********************"
echo "Immediately check these changes and add to Git if they are correct."
echo "Don't commit both format changes and logic changes in the same commit."
