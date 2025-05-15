
SELECT
    r.session_id,
    s.login_name,
    r.status,
    r.start_time,
    r.total_elapsed_time / 1000 AS ElapsedSeconds,
	r.cpu_time,
    r.command,
    t.text AS SqlText
FROM 
    sys.dm_exec_requests r
    JOIN sys.dm_exec_sessions s ON r.session_id = s.session_id
    CROSS APPLY sys.dm_exec_sql_text(r.sql_handle) t
--WHERE 
--    r.session_id <> @@SPID -- if you need to exclude current session
ORDER BY 
    r.start_time DESC;
