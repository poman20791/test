SELECT
communities.name,
users.name,
community_members.joined_at
FROM communities
inner join community_members on communities.id = community_members.community_id
inner join users on users.id = community_members.user_id where communities.created_at > '2013-01-01 00:00:00'