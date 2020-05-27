#!/bin/bash
chmod 644 -R ./ && find ./ -type d -print|xargs chmod 755 && chgrp www -R ./ && chown www -R ./
