class ApplicationController < ActionController::Base
  protect_from_forgery

  SOFTWARE_PROJECT = { :organic => [3.2, 1.05], :semidetached => [3.0, 1.12], :embedded =>  [2.8, 1.20] }
  
  EM = [
    ["Product reliability and complexity",  0.49,  0.60,  0.83,  1.00,  1.33,  1.91,  2.72],
    ["Required reusability",                0.00,  0.00,  0.95,  1.00,  1.07,  1.15,  1.24],
    ["Platform difficulty",                 0.00,  0.00,  0.87,  1.00,  1.29,  1.81,  2.61],
    ["Personnel capability",                2.12,  1.62,  1.26,  1.00,  0.83,  0.63,  0.50],
    ["Personnel experience",                1.59,  1.33,  1.12,  1.00,  0.87,  0.74,  0.62],
    ["Facilities available ",               1.43,  1.30,  1.10,  1.00,  0.87,  0.73,  0.62],
    ["Schedule pressure ",                  0.00,  1.43,  1.14,  1.00,  1.00,  1.00,  0.00]
  ]
  
  
  SF = [ 
    ["Precedentedness  PREC",               6.20,  4.96,  3.72,  2.48,  1.24,  0.00],
    ["Development/Flexibility  FLEX",       5.07,  4.05,  3.04,  2.03,  1.01,  0.00],
    ["Architecture/Risk Resolution RESL",   7.07,  5.65,  4.24,  2.83,  1.41,  0.00],
    ["Team Cohesion  TEAM",                 5.48,  4.38,  3.29,  2.19,  1.10,  0.00],
    ["Process Maturity  PMAT",              7.80,  6.24,  4.68,  3.12,  1.56,  0.00]
  ]
  
  
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

  RATING_HEADERS = ["Extra low", "Very Low",  "Low", "Nominal", "High",  "Very High", "Extra High"]

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
