select name from Employee where id in (select managerID from employee 
group by managerId 
having count(name)>=5)