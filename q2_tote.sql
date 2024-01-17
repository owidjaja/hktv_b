-- DDL
CREATE TABLE order_tote_process_log (
  id bigint(20),
  tote_number varchar(20),
  action_code varchar(255),
  process_date datetime,
  user_code varchar(255)
);

INSERT INTO order_tote_process_log VALUES (1, '123789', 'START', 	'2023-11-01 09:16:50', 'SYS');
INSERT INTO order_tote_process_log VALUES (2, '199888', 'START', 	'2023-11-01 09:16:55', 'SYS');
INSERT INTO order_tote_process_log VALUES (3, '124554', 'START', 	'2023-11-01 09:17:03', 'SYS');
INSERT INTO order_tote_process_log VALUES (4, '123789', 'PICKED', 	'2023-11-01 09:17:03', 'SYS');
INSERT INTO order_tote_process_log VALUES (5, '123789', 'PACKED', 	'2023-11-01 10:35:50', 'P1');
INSERT INTO order_tote_process_log VALUES (6, '124554', 'PICKED', 	'2023-11-01 11:00:50', 'SYS');
INSERT INTO order_tote_process_log VALUES (7, '124554', 'PACKED', 	'2023-11-01 11:03:50', 'P2');


-- Query

SELECT * FROM order_tote_process_log;

SELECT user_code, count(tote_number) as num_packed
FROM order_tote_process_log
WHERE CAST(process_date as time) >= '10:00:00' AND CAST(process_date as time) <= '10:59:59'
AND action_code = 'PACKED'
AND user_code <> 'SYS' -- optional clause
GROUP BY user_code
;