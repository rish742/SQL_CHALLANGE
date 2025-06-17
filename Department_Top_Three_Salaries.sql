SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM Employee e LEFT JOIN Department d
    ON e.departmentID = d.id
WHERE 3 > (
    SELECT COUNT(DISTINCT t.salary) FROM Employee t
    WHERE t.Salary > e.Salary
    AND t.departmentId = e.departmentID
);