class Solution:
    def isPowerOfTwo(self, n: int) -> bool:
        i = 0
        while n >= 2**i:
            if n==2**i:
                return True
            else:
                i+=1
        return False

class Solution(object):
    def isPowerOfTwo(self, n):
        if n == 0:
            return False
        return n & (-n) == n

        # complement of 2
        # power of 2 contains only one bit-1 in binary representation
