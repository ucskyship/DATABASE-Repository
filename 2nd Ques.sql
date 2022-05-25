-- use demo

SELECT Human.name, SUM(price) AS TotalPrice
FROM Human, Games, GamePurchase
WHERE Human.humanID = GamePurchase.humanID 
AND Games.gameID = GamePurchase.gameID
GROUP BY name
ORDER BY name DESC;
