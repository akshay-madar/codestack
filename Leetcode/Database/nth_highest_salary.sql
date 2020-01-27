create function getnthhighestsalary(n int) returns int
begin
    set n = n-1;
  return (
      # write your mysql query statement below.
      select distinct salary from employee
      order by salary desc limit n, 1
  );
end
