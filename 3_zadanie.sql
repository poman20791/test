SELECT communities.name, users.name , permissions.name FROM community_members
INNER JOIN users on users.id = community_members.user_id
INNER JOIN community_member_permissions on community_member_permissions.member_id = community_members.id
INNER JOIN permissions on permissions.id = community_member_permissions.permission_id
INNER JOIN communities on communities.id = community_members.community_id
where users.name LIKE '%T,t%' or permissions.name LIKE '%articles' AND LENGTH(communities.name)>=15