SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM Employee e JOIN Department d
    ON e.departmentID = d.id
WHERE e.salary = (
    SELECT MAX(salary) FROM Employee
    WHERE departmentId = e.departmentID
);