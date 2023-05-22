data Employee = Engineer Int | Manager Double Int

getSalary (Engineer salary) = salary
getSalary (Manager salary bonus) = salary + bonus

-- theme:  adt, basics
-- goanna results: 3
-- oracle: false
-- intended fix: none