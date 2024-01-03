SELECT T.name name,
       SUM(T.dist) travelled_distance
FROM
  (SELECT Users.id id,
          Users.name name,
          Rides.distance travelled_distance,
          CASE
              WHEN distance IS NULL THEN 0
              ELSE distance
          END dist
   FROM Users
   LEFT OUTER JOIN Rides ON Users.id = Rides.user_id) T
GROUP BY T.id,
         T.name
ORDER BY travelled_distance DESC,
         name;
