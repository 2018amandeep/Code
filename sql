1.Write a solution to find all customers who never order anything.
Return the result table in any order.
The result format is in the following example.

Solution: 
select name as Customer from Customer c where c.id not in (select customerId from Order)


2. Select employee name from table whose salary is greater then their manager.
Sol: select e1.name, e2.name as manager from employee e1, employee e2
where e1.mgr = e2.mgr and e1.sal> e2.sal

3. Select first and last employee.
Sol: select * from (select rownum r, name, class from employee)
where r =1 or r = (select count(*) from employee)
