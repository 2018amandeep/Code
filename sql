1.Write a solution to find all customers who never order anything.
Return the result table in any order.
The result format is in the following example.

Solution: 
select name as Customer from Customer c where c.id not in (select customerId from Order)
