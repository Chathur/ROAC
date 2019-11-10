SELECT Resource_Role_Map.resource
FROM Role_User ,Resource_Role_Map where
Role_User.rolename = Resource_Role_Map.role and Role_User.username='q';