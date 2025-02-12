-- Input: 
-- Employee table:
-- +----+-------+--------+-----------+
-- | id | name  | salary | managerId |
-- +----+-------+--------+-----------+
-- | 1  | Joe   | 70000  | 3         |
-- | 2  | Henry | 80000  | 4         |
-- | 3  | Sam   | 60000  | Null      |
-- | 4  | Max   | 90000  | Null      |
-- +----+-------+--------+-----------+

-- Output: 
-- +----------+
-- | Employee |
-- +----------+
-- | Joe      |
-- +----------+

-- PostgreSQL query
SELECT emp1.name as Employee
FROM Employee as emp1 
LEFT JOIN Employee AS emp2 
    ON emp1.managerId = emp2.id 
WHERE emp1.salary > emp2.salary;
