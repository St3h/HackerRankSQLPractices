SELECT hck.hacker_id, hck.name
FROM Hackers hck
INNER JOIN Submissions sbm
    ON hck.hacker_id = sbm.hacker_id
INNER JOIN Challenges chl
    ON sbm.challenge_id = chl.challenge_id
INNER JOIN Difficulty dfc
    ON dfc.difficulty_level = chl.difficulty_level
WHERE sbm.score = dfc.score AND  dfc.difficulty_level = chl.difficulty_level
GROUP BY hck.hacker_id, hck.name
HAVING COUNT(sbm.hacker_id) > 1
ORDER BY COUNT(sbm.hacker_id) DESC, sbm.hacker_id ASC;