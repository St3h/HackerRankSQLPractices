SELECT std.name, grd.grade, std.marks 
FROM STUDENTS std 
    INNER JOIN GRADES grd ON std.marks BETWEEN grd.min_mark and grd.max_mark
WHERE grd.grade > 7 
ORDER BY grd.grade DESC, Name;

SELECT null, grd.grade, std.marks 
FROM STUDENTS std 
    INNER JOIN GRADES grd ON std.marks BETWEEN grd.min_mark and grd.max_mark
WHERE grd.grade <= 7 
ORDER BY grd.grade DESC, std.marks ASC;
