data Employee = Engineer Int | Manager Double Int

getSalary (Engineer salary) = salary
getSalary (Manager salary bonus) = salary + bonus