SET @position := 0;
SELECT COUNT(*) FROM STATION INTO @total;
SELECT ROUND(AVG(A.lat_n), 4)
FROM (SELECT @position := @position + 1 AS row_id, lat_n FROM STATION ORDER BY lat_n) A
    WHERE
        CASE WHEN MOD(@total, 2) = 0
                THEN A.row_id IN (@total/2, (@total/2)+1)
                ELSE A.row_id = ((@total+1)/2)
        END;
