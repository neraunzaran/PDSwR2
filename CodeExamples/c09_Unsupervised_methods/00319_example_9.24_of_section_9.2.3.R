# example 9.24 of section 9.2.3 
# (example 9.24 of section 9.2.3)  : Unsupervised methods : Association rules : Mining association rules with the arules package 
# Title: Scoring rules 

measures <- interestMeasure(rules,                            	# Note: 1 
                 measure=c("coverage", "fishersExactTest"),    	# Note: 2 
                 transactions = bookbaskets_use)                	# Note: 3 
summary(measures)
##     coverage        fishersExactTest
##  Min.   :0.002082   Min.   : 0.000e+00
##  1st Qu.:0.002511   1st Qu.: 0.000e+00
##  Median :0.002719   Median : 0.000e+00
##  Mean   :0.003039   Mean   :5.080e-138
##  3rd Qu.:0.003160   3rd Qu.: 0.000e+00
##  Max.   :0.006982   Max.   :9.702e-136

# Note 1: 
#   The first argument to interestMeasure() is 
#   the discovered rules 

# Note 2: 
#   Second argument is a list of interest 
#   measures to apply 

# Note 3: 
#   Last argument is a dataset to evaluate the 
#   interest measures over. This is usually the same 
#   set used to mine the rules, but it needn’t be. For 
#   instance, you can evaluate the rules over the full 
#   dataset, bookbaskets, to get coverage estimates 
#   that reflect all the customers, not just the ones 
#   who showed interest in more than one book. 

