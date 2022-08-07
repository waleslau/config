#!/bin/bash
find . -type d -name .git -execdir sh -c "pwd && git remote show" \;
