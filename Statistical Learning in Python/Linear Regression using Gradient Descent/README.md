Here, I have tried to implement linear regression using Gradient Descent Algorithm, based on learnings from Andrew Ng's course on Machine Learning.

### Gradient Descent Algorithm:

def gradient_descent(x, y, theta, iterations, alpha):
    past_costs = []
    past_thetas = [theta]
    for i in range(iterations):
        prediction = np.dot(x, theta) # x and coefficient estimates
        error = prediction - y # diff in predicted and actual values of house price
        cost = 1/(2*m) * np.dot(error.T, error) # for minimization
        past_costs.append(cost)
        theta = theta - (alpha * (1/m) * np.dot(x.T, error)) # calculating...
        past_thetas.append(theta)

    return past_thetas, past_costs

# getting new values back for theta and costs
past_thetas, past_costs = gradient_descent(x, y, theta, iterations, alpha)
theta = past_thetas[-1]
