
-- Vidange de l'ancien forum.
TRUNCATE phpboost_forum_cats;
TRUNCATE phpboost_forum_msg;
TRUNCATE phpboost_forum_topics;
TRUNCATE phpboost_forum_view;
TRUNCATE phpboost_forum_track;
TRUNCATE phpboost_forum_poll;
TRUNCATE phpboost_forum_history;
TRUNCATE phpboost_forum_alerts;

-- Ajout des membres 
DELETE FROM `phpbb_users` WHERE user_type = 2;
INSERT INTO `phpboost_member` (`user_id`, `login`, `password`, `level`, `user_groups`, `user_lang`, `user_theme`, `user_mail`, `user_show_mail`, `user_editor`, `user_timezone`, `timestamp`, `user_avatar`, `user_msg`, `user_local`, `user_msn`, `user_yahoo`, `user_web`, `user_occupation`, `user_hobbies`, `user_desc`, `user_sex`, `user_born`, `user_sign`, `user_pm`, `user_warning`, `user_readonly`, `last_connect`, `test_connect`, `activ_pass`, `new_pass`, `user_ban`, `user_aprob`) SELECT user_id, username, user_password, CASE WHEN user_type = 3 THEN 2 ELSE 0 END, '', 'french', '', user_email, 0, 'bbcode', CAST(user_timezone AS SIGNED), user_regdate, user_avatar, user_posts, user_from, user_msnm, user_yim, user_website, user_occ, user_interests, '', 0, 0, user_sig, 0, 0, 0, 0, 0, '', '', 0, 1 FROM `phpbb_users`;


-- Ajout des catégories 
INSERT INTO `phpboost_forum_cats` (`id`, `id_left`, `id_right`, `level`, `name`, `subname`, `nbr_topic`, `nbr_msg`, `last_topic_id`, `status`, `aprob`, `auth`, `url`) SELECT forum_id, left_id, right_id, CASE WHEN SUBSTR(forum_parents, 3, 1) = '' THEN 0 ELSE CAST(SUBSTR(forum_parents, 3, 1) AS SIGNED) END, forum_name, forum_desc, forum_topics, forum_posts, (SELECT phpbb_posts.topic_id FROM `phpbb_posts` WHERE phpbb_posts.post_id = phpbb_forums.forum_last_post_id), 1, 1, 'a:4:{s:3:"r-1";i:1;s:2:"r0";i:1;s:2:"r1";i:1;s:2:"r2";i:7;}', forum_link FROM `phpbb_forums`;


-- Ajout des sujets 
INSERT INTO `phpboost_forum_topics` (`id`, `idcat`, `title`, `subtitle`, `user_id`, `nbr_msg`, `nbr_views`, `last_user_id`, `last_msg_id`, `last_timestamp`, `first_msg_id`, `type`, `status`, `aprob`, `display_msg`)
SELECT topic_id, forum_id, topic_title, '', topic_poster, topic_replies+1, topic_views, topic_last_poster_id, topic_last_post_id, topic_last_post_time, topic_first_post_id, CASE WHEN topic_type = 3 THEN 2 ELSE topic_type END, 1 - topic_status, 0, 0 FROM `phpbb_topics`;


-- Ajout des messages 
INSERT INTO `phpboost_forum_msg` (`id`, `idtopic`, `user_id`, `contents`, `timestamp`, `timestamp_edit`, `user_id_edit`) SELECT post_id, topic_id, poster_id, post_text, post_time, post_edit_time, post_edit_user FROM `phpbb_posts`;
