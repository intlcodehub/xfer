-- Join forum read data against post data to extract reads in the SNA form of:
-- Reader -> Poster (The person reading is the source, the person who posted is the target) with course/class id
SELECT * INTO mdl_forum_read_snadata_with_courseid FROM (SELECT p.id AS postid, r.userid AS user_reader, p.userid AS user_poster, r.firstread, r.lastread, d.course AS class_course_id FROM mdl_forum_read r JOIN mdl_forum_posts p ON r.postid = p.id JOIN mdl_forum_discussions d ON p.discussion = d.id ORDER BY postid, firstread) data;


-- Data Example, first 50 lines:
-- SELECT * FROM mdl_forum_read_snadata_with_courseid ORDER BY class_course_id, postid, firstread LIMIT 50;
--
--  postid | user_reader | user_poster | firstread  |  lastread  | class_course_id 
-- --------+-------------+-------------+------------+------------+-----------------
--  792989 |      330792 |      330792 | 1410946268 | 1410946268 |           40491
--  792989 |      191445 |      330792 | 1410947450 | 1410947450 |           40491
--  792989 |      369960 |      330792 | 1410948618 | 1410948618 |           40491
--  792989 |      346278 |      330792 | 1410948619 | 1410948619 |           40491
--  792989 |      187773 |      330792 | 1410948620 | 1410948620 |           40491
--  792989 |      100395 |      330792 | 1410948622 | 1410948622 |           40491
--  792989 |      252744 |      330792 | 1410948622 | 1410948622 |           40491
--  792989 |      192846 |      330792 | 1410948622 | 1410948622 |           40491
--  792989 |      254352 |      330792 | 1410948624 | 1410948624 |           40491
--  792989 |      298221 |      330792 | 1410948667 | 1410948667 |           40491
--  792989 |      293118 |      330792 | 1410951283 | 1410951283 |           40491
--  792989 |      344136 |      330792 | 1410951764 | 1410951764 |           40491
--  792989 |      298359 |      330792 | 1410953626 | 1410953626 |           40491
--  792989 |      188820 |      330792 | 1410953639 | 1410953639 |           40491
--  792989 |      342900 |      330792 | 1410955974 | 1410955974 |           40491
--  792989 |      350535 |      330792 | 1410956035 | 1410956035 |           40491
--  792989 |      348102 |      330792 | 1410958714 | 1410958714 |           40491
--  792989 |      206073 |      330792 | 1410959392 | 1410959392 |           40491
--  792989 |      335481 |      330792 | 1410986683 | 1410986683 |           40491
--  792989 |      346407 |      330792 | 1410997032 | 1410997032 |           40491
--  792989 |      253254 |      330792 | 1410998339 | 1410998339 |           40491
--  792989 |      249399 |      330792 | 1410999785 | 1410999785 |           40491
--  792989 |      314625 |      330792 | 1411006951 | 1411006951 |           40491
--  792989 |      297930 |      330792 | 1411011261 | 1411011261 |           40491
--  792989 |      296052 |      330792 | 1411022615 | 1411022615 |           40491
--  792989 |      298020 |      330792 | 1411024087 | 1411024087 |           40491
--  792989 |      192948 |      330792 | 1411024088 | 1411024088 |           40491
--  792989 |      354876 |      330792 | 1411024648 | 1411024648 |           40491
--  792989 |      355683 |      330792 | 1411025291 | 1411025291 |           40491
--  792989 |      335241 |      330792 | 1411025318 | 1411025318 |           40491
--  792989 |      326271 |      330792 | 1411026279 | 1411026279 |           40491
--  792989 |      187428 |      330792 | 1411035636 | 1411035636 |           40491
--  792989 |      349473 |      330792 | 1411036461 | 1411036461 |           40491
--  792989 |      360765 |      330792 | 1411047042 | 1411047042 |           40491
--  792989 |      315435 |      330792 | 1411078394 | 1411078394 |           40491
--  792989 |      318705 |      330792 | 1411079972 | 1411079972 |           40491
--  792989 |      191400 |      330792 | 1411080956 | 1411080956 |           40491
--  792989 |      201693 |      330792 | 1411081839 | 1411081839 |           40491
--  792989 |      201006 |      330792 | 1411083494 | 1411083494 |           40491
--  792989 |      337152 |      330792 | 1411089071 | 1411089071 |           40491
--  792989 |      192951 |      330792 | 1411134282 | 1411134282 |           40491
--  792989 |      353397 |      330792 | 1411208786 | 1411208786 |           40491
--  792989 |      345021 |      330792 | 1411268480 | 1411268480 |           40491
--  792989 |      189738 |      330792 | 1411282538 | 1411282538 |           40491
--  792989 |      343998 |      330792 | 1411346143 | 1411346143 |           40491
--  792989 |      336891 |      330792 | 1411428080 | 1411428080 |           40491
--  792989 |      292434 |      330792 | 1411434323 | 1411434323 |           40491
--  792989 |      348915 |      330792 | 1411516084 | 1411516084 |           40491
--  792989 |      309726 |      330792 | 1411544368 | 1411544368 |           40491
--  792989 |      190449 |      330792 | 1411547215 | 1411547215 |           40491
-- (50 rows)

