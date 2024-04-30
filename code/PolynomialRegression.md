Polynomial regression is a tool that allows us to understand and predict
the behavior of complex data. While linear regression assumes a linear
relationship between the independent variables and the dependent
variable, polynomial regression allows for modeling nonlinear
relationships by incorporating polynomial terms.

First, we consider the univariate model of the form:

According to polynomial regression, *f* is a polynomial function with
degree *q*. i.e., for certain coefficients *β*<sub>*j*</sub> where
*j* = 0, …, *q*. Now, the model above can be written as

It is possible to estimate the coefficients *β* using linear regression
considering the model *y* = *X**β* + *ε* where the model matrix is
*X* = \[1,*x*,*x*<sup>2</sup>,…,*x*<sup>*q*</sup>\] and the coefficient
vector is
*β* = \[*β*<sub>0</sub>,*β*<sub>1</sub>,*β*<sub>2</sub>,…*β*<sub>*q*</sub>\]<sup>*T*</sup>.
