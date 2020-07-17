docker run -d --name v2ray -v /etc/v2ray:/etc/v2ray -p 10809:10809 v2ray/official  v2ray -config=/etc/v2ray/config-docker.json
