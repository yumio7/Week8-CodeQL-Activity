/**
 * @description Find all files that have functions longer than 10 lines
 * @kind problem
 * @id javascript/long-functions
 * @problem.severity recommendation
 */
import javascript

predicate isLongerThanTenLines(Function func) {
    func.getNumLines() > 10
}

from Function func
where isLongerThanTenLines(func)
select func, "Found function with more than ten lines: " + func