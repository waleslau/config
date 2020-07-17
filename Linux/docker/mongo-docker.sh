docker run -itd --name mongo -p 27017:27017 --restart=always mongo --auth
docker exec -it mongo mongo admin

# then
# db.createUser({ user:'admin',pwd:'000000',roles:[ { role:'userAdminAnyDatabase', db: 'admin'}, "readWriteAnyDatabase" ]});
# then
# db.auth('admin', '000000')
