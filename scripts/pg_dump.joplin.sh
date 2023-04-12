#!/usr/bin/env sh
pg_dump -Fc postgresql://joplin:joplin%40pg@127.0.0.1:5432/joplin-server > joplin-server.$(date +%s).pg.dump
ls -lh
