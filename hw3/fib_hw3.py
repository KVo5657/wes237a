#! /usr/bin/python

import time

# Program to calculate the Fibonacci sequence up to n-th term
nterms = int(input())

def recur_fibo(n):
   if n <= 1:
       return n
   else:
       return(recur_fibo(n-1) + recur_fibo(n-2))

# get before time using the python time module
tic = time.time()
# print("Time Before:", tic)

# check if the number of terms is valid
if nterms <= 0:
   print("Please enter a positive integer")
else:
   recur_fibo(nterms)        
    
# get after time using the python time module    
tac = time.time()
# print("Time After:", tac)

# time elapsed
time_elapsed = tac-tic
# print('time spent: {}'.format(time_elapsed))

# Ordered Print For Easy Transfer to Spreadsheet
print("- Time Before:", tic, "seconds")
print("- Time After:", tac, "seconds")
print("- Time Elapsed:", time_elapsed, "seconds")