"""
# module Exercise01

- Julia version: 1.6.7
- Author: lwx
- Date: 2022-10-20

# Examples

```jldoctest
julia>
```
"""
module Exercise

    # Question 001 Import the julia package LinearAlgebra under the name la
    import LinearAlgebra;
    const LA = LinearAlgebra;

    # Question 002 Print the version of Julia
    println(VERSION);

    # Question 007 Create a vector with values ranging from 10 to 49
    a = [x for x in 10:49]

    # Question 010 Find indices of non-zero elements from [1,2,0,0,4,0]
    A = [1,2,0,0,4,0];
    println(findall(!iszero,A))

    # Question 034 How to get all the dates corresponding to the month of July 2016?
    using Dates
    dates = collect(Date(2016,7,1):Day(1):Date(2016,7,31))
    println(today())

    # Question 050 How to find the closest value (to a given scalar) in a vector?
    a = rand(3)
    x = 3
    b = abs.(a.-x)
    print(a[findmin(b)[2]])

end