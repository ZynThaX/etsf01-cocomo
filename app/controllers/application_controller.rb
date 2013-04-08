class ApplicationController < ActionController::Base
  protect_from_forgery

  SOFTWARE_PROJECT = { :organic => [3.2, 1.05], :semidetached => [3.0, 1.12], :embedded =>  [2.8, 1.20] }

  RATINGS = [
    [0.75, 0.88, 1.00, 1.15, 1.40, 0.00, "Required software reliability"],
    [0.00, 0.94, 1.00, 1.08, 1.16, 0.00, "Size of application database"],
    [0.70, 0.85, 1.00, 1.15, 1.30, 1.65, "Complexity of the product"],
    [0.00, 0.00, 1.00, 1.11, 1.30, 1.66, "Run-time performance constraints"],
    [0.00, 0.00, 1.00, 1.06, 1.21, 1.56, "Memory constraints"],
    [0.00, 0.87, 1.00, 1.15, 1.30, 0.00, "Volatility of the virtual machine environment"],
    [0.00, 0.87, 1.00, 1.07, 1.15, 0.00, "Required turnabout time"],
    [1.46, 1.19, 1.00, 0.86, 0.71, 0.00, "Analyst capability"],
    [1.29, 1.13, 1.00, 0.91, 0.82, 0.00, "Applications experience"],
    [1.42, 1.17, 1.00, 0.86, 0.70, 0.00, "Software engineer capability"],
    [1.21, 1.10, 1.00, 0.90, 0.00, 0.00, "Virtual machine experience"],
    [1.14, 1.07, 1.00, 0.95, 0.00, 0.00, "Programming language experience"],
    [1.24, 1.10, 1.00, 0.91, 0.82, 0.00, "Application of software engineering methods"],
    [1.24, 1.10, 1.00, 0.91, 0.83, 0.00, "Use of software tools"],
    [1.23, 1.08, 1.00, 1.04, 1.10, 0.00, "Required development schedule"]
  ]

  RATING_HEADERS = ["Very Low",  "Low", "Nominal", "High",  "Very High", "Extra High"]

#   RSR =    [0.75, 0.88, 1.00, 1.15, 1.40, 0.00, "Required software reliability"]
#   SOAD =   [0.00, 0.94, 1.00, 1.08, 1.16, 0.00, "Size of application database"]
#   COTP =   [0.70, 0.85, 1.00, 1.15, 1.30, 1.65, "Complexity of the product"]

#   RTPC =   [0.00, 0.00, 1.00, 1.11, 1.30, 1.66, "Run-time performance constraints"]
#   MC =     [0.00, 0.00, 1.00, 1.06, 1.21, 1.56, "Memory constraints"]
#   VOTVME = [0.00, 0.87, 1.00, 1.15, 1.30, 0.00, "Volatility of the virtual machine environment"]
#   RTT  =   [0.00, 0.87, 1.00, 1.07, 1.15, 0.00, "Required turnabout time"]

#   AC =     [1.46, 1.19, 1.00, 0.86, 0.71, 0.00, "Analyst capability"]
#   AE =     [1.29, 1.13, 1.00, 0.91, 0.82, 0.00, "Applications experience"]
#   SEC =    [1.42, 1.17, 1.00, 0.86, 0.70, 0.00, "Software engineer capability"]
#   VME =    [1.21, 1.10, 1.00, 0.90, 0.00, 0.00, "Virtual machine experience"]
#   PLE =    [1.14, 1.07, 1.00, 0.95, 0.00, 0.00, "Programming language experience"]

#   AOSEM =  [1.24, 1.10, 1.00, 0.91, 0.82, 0.00, "Application of software engineering methods"]
#   UOST =   [1.24, 1.10, 1.00, 0.91, 0.83, 0.00, "Use of software tools"]
#   RDS =    [1.23, 1.08, 1.00, 1.04, 1.10, 0.00, "Required development schedule"]

# Required software reliability
# Size of application database
# Complexity of the product

# Run-time performance constraints
# Memory constraints
# Volatility of the virtual machine environment
# Required turnabout time

# Analyst capability
# Applications experience
# Software engineer capability
# Virtual machine experience
# Programming language experience

# Application of software engineering methods
# Use of software tools
# Required development schedule



end
