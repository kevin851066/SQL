SELECT Hackers.hacker_id, Hackers.name
FROM Submissions 
INNER JOIN Hackers ON Hackers.hacker_id = Submissions.hacker_id
INNER JOIN Challenges ON Challenges.challenge_id = Submissions.challenge_id
INNER JOIN Difficulty ON Difficulty.difficulty_level = Challenges.difficulty_level
WHERE Submissions.score = Difficulty.score AND Challenges.difficulty_level = Difficulty.difficulty_level
GROUP BY Hackers.hacker_id, Hackers.name
HAVING COUNT(Submissions.hacker_id) > 1
ORDER BY COUNT(Submissions.hacker_id) DESC, Submissions.hacker_id ASC 
