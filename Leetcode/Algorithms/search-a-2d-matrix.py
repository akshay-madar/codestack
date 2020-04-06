class Solution:

    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        m = len(matrix)
        if m == 0:
            return False
        n = len(matrix[0])
        if n == 0:
            return False

        lo = 0
        hi = m*n - 1
        while lo <= hi:
            mid = lo + (hi - lo)//2
            mid_val = matrix[mid//n][mid%n]

            if mid_val == target:
                return True
            elif mid_val > target:
                hi = mid-1
            else:
                lo = mid+1


        return False
