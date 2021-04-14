SELECT communities.id, communities.name, permissions.name,users.id FROM community_member_permissions
INNER JOIN permissions on permissions.id = community_member_permissions.permission_id
INNER JOIN community_members on community_member_permissions.member_id = community_members.id
INNER JOIN communities on communities.id = community_members.community_id
INNER JOIN users on users.id = community_members.user_id
ORDER BY communities.id DESC, permissions.name ASC LIMIT 100;
