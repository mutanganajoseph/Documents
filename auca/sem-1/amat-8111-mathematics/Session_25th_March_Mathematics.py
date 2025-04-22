# coding: utf-8
# Introduction to Matrix Algebra using python
import numpy as np
A = np.array([[0, 1, -2.3, 0.1], [1.3, 4, -0.1, 1], [4.1, -1, 0, 1.7]])
# Reshaping a matrix
A.reshape(6,2)
# Transpose of a matrix
A.T
# Matrix Slicing (location an entry)
A
# Locating the zero in the matrix
A[2, 2]
# Last 2 rows in the A transpose
A.T.shape
A.T[2:4, :]
Z2 = np.zeros([2,2])
Z2
type(A[2,2])
Z5 = np.zeros([5,5])
Z5
Z5
I2 = np.identity(2)
I2
I5 = np.identity(5)
I5
Z5.shape
Ran
from numpy import random as rand
Ran = rand.random([3,3])
(50 + 100) * Ran
A
B = np.array([[1,-2,6], [0,8,-5], [3,1,2]])
C = np.array([[1,2,3], [-5,10,-6], [3.2,1,2]])
# Addition of matrices
B+C
