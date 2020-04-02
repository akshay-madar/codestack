Here, I have tried to implement linear regression using Normal Equation, ie. using matrix forms.

### Method to solve for theta analytically:
theta = inv(X'X).(X'Y)                , where...

- theta is coefficient vector
- Y is dependent variable vector
- X is matrix containing independent variables, with an additional row of 1's for intercept

### Comparison with Gradient Descent:
  1) no need to choose alpha -> learning rate
  2) no need to iterate
  3) no need to normalize the data
  4) slow if n is too large (~10000)
  
### What if (X'X) is non-invertible?
  * Redundant features: some are linearly dependent on each other
  * Too many features: (m < n)
      1) delete some features
      2) use regularization
