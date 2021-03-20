SELECT Wands.id, Wands_Property.age, Wands.coins_needed, Wands.power
FROM Wands
INNER JOIN Wands_Property ON Wands.code = Wands_Property.code
WHERE (Wands_Property.age, Wands.coins_needed, Wands.power)
    IN ( SELECT Wands_Property.age, MIN(Wands.coins_needed), Wands.power FROM Wands
         INNER JOIN Wands_Property ON Wands.code = Wands_Property.code
         WHERE Wands_Property.is_evil = 0
         GROUP BY Wands.power, Wands_Property.age )
ORDER BY Wands.power DESC, Wands_Property.age DESC