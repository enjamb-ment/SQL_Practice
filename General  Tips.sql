-- Suggestions from reddit.

-- 1. Implement DAB CRUD.
    -- it will force you to create views, SP's, Functions, and error handling
    -- Potentially, track changes you'd want to implenet an actually useful API in for real world integration
    -- sidenote, find out what that is :)
-- 2. Create a data dictionary for the DB.  
    -- Document all the indexes, views with indexes, all the most efficient ways to get common data, and ensure indexes are used.  
    -- Document ways that didn't/don't work well.
-- 3. Use the "Query Store" to find bad queries and use it to make better queries.
