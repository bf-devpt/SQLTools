
SELECT 
    OBJECT_NAME(o.object_id) AS ObjectName,
    o.type_desc AS ObjectType,
    o.create_date AS CreateDate,
    o.modify_date AS ModifyDate,
    m.definition AS Text
FROM 
    sys.sql_modules m
    LEFT JOIN sys.objects o ON m.object_id = o.object_id
WHERE 
    m.definition LIKE '%text-to-search%'
    AND o.type_desc IS NOT NULL
