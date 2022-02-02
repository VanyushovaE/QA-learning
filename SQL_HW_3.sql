-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select * from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join employees 
on employees.id=employee_salary.employee_id

-- 2. Вывести всех работников у которых ЗП меньше 2000.
select * from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join employees 
on employees.id=employee_salary.employee_id where monthly_salary < 2000;

 -- 3. Вывести все зарплатные позиции, но работник по ним не назначен (ЗП есть, но не понятно кто её получает.)
select * from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join employees 
on employees.id=employee_salary.employee_id where employee_name is null 

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select * from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join employees 
on employees.id=employee_salary.employee_id where monthly_salary < 2000 and employee_name is null ;

-- 5. Найти всех работников кому не начислена ЗП.
select * from employees left join employee_salary
on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id=salary.id where monthly_salary is null 

--  6. Вывести всех работников с названиями их должности.
select * from employees left join roles_employee
on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id=roles.id 

-- 7. Вывести имена и должность только Java разработчиков.
select * from employees left join roles_employee
on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id=roles.id 
where role_name like '%Java%'

-- 8. Вывести имена и должность только Python разработчиков.
select * from employees left join roles_employee
on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id=roles.id 
where role_name like '%Python%'

--  9. Вывести имена и должность всех QA инженеров.
select * from employees left join roles_employee
on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id=roles.id 
where role_name like '%QA%'

--  10. Вывести имена и должность ручных QA инженеров.
select * from employees left join roles_employee
on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id=roles.id 
where role_name like '%Manual QA%'

--11. Вывести имена и должность автоматизаторов QA
select * from employees left join roles_employee
on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id=roles.id 
where role_name like '%Automation QA%'

-- 12. Вывести имена и зарплаты Junior специалистов
select * from employees left join roles_employee
on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id=roles.id 
where role_name like '%Junior%'

-- 13. Вывести имена и зарплаты Middle специалистов
select * from employees left join roles_employee
on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id=roles.id 
where role_name like '%Middle%'

 -- 14. Вывести имена и зарплаты Senior специалистов
select * from employees left join roles_employee
on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id=roles.id 
where role_name like '%Senior%'

-- 15. Вывести зарплаты Java разработчиков
select * from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join roles 
on salary.id=roles.id where role_name like '%Java%'

-- 16. Вывести зарплаты Python разработчиков
select * from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join roles 
on salary.id=roles.id where role_name like '%Python%'

-- 17. Вывести имена и зарплаты Junior Python разработчиков
select * from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join employees on employees.id=employee_id
left join roles on roles.id=employee_salary.salary_id
where role_name like '%Junior Python%'

 -- 18. Вывести имена и зарплаты Middle JS разработчиков
select * from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join employees on employees.id=employee_id
left join roles on roles.id=employee_salary.salary_id
where role_name like '%Middle JavaScript%'

 --19. Вывести имена и зарплаты Senior Java разработчиков
select * from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join employees on employees.id=employee_id
left join roles on roles.id=employee_salary.salary_id
where role_name like '%Senior Java developer%'

--  20. Вывести зарплаты Junior QA инженеров
select * from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join roles 
on salary.id=roles.id where role_name like '%Junior%QA%'

-- 21. Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary) from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join roles 
on salary.id=roles.id where role_name like '%Junior%' 

-- 22. Вывести сумму зарплат JS разработчиков
select sum(monthly_salary) from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join roles 
on salary.id=roles.id where role_name like '%JavaScript%'

-- 23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary) from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join roles 
on salary.id=roles.id where role_name like '%QA%'

--  24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary) from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join roles 
on salary.id=roles.id where role_name like '%QA%'

--  25. Вывести количество QA инженеров
select count(*) from employees left join roles_employee
on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id=roles.id 
where role_name like '%QA%'

-- 26. Вывести количество Middle специалистов.
select count(*) from employees left join roles_employee
on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id=roles.id 
where role_name like '%Middle%'

 --27. Вывести количество разработчиков
select count(*) from employees left join roles_employee
on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id=roles.id 
where role_name like '%developer%'

--  28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary) from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join roles 
on salary.id=roles.id where role_name like '%developer%'

--  29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select * from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join employees on employees.id=employee_id
left join roles on roles.id=employee_salary.salary_id
order by monthly_salary 

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select * from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join employees on employees.id=employee_id
left join roles on roles.id=employee_salary.salary_id
where monthly_salary>1700 and monthly_salary<2300 
order by monthly_salary 

 -- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select * from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join employees on employees.id=employee_id
left join roles on roles.id=employee_salary.salary_id
where monthly_salary<2300 
order by monthly_salary 

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select * from salary left join employee_salary
on salary.id = employee_salary.salary_id 
left join employees on employees.id=employee_id
left join roles on roles.id=employee_salary.salary_id
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
order by monthly_salary 


