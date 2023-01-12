
x <- c(1,2,3,4,5)
y <- c(2,4,5,4,5)

x_mean = mean(x)
y_mean = mean(y)

result_x_minus_xhat <- (x-x_mean)
cat("Result (x-xhat): ", result_x_minus_xhat)

result_y_minus_yhat <- (y-y_mean)
cat("Result (y-yhat): ", result_y_minus_yhat)

result_xhat_squared <- sum((result_x_minus_xhat)^2)
cat(result_xhat_squared)

result_xhat_minus_yhat <- sum((result_x_minus_xhat * result_y_minus_yhat))
cat(result_xhat_minus_yhat)

b1_slope = result_xhat_minus_yhat / result_xhat_squared
cat(b1_slope)

final_slope = y_mean - (b1_slope * x_mean) 
cat(final_slope)

cat("Final equation: y = ", final_slope, b1_slope,"x")