class Solution:
    def sortedSquares(self, A: List[int]) -> List[int]:
        final = [0] * len(A)
        l, r = 0, len(A) - 1
        while l <= r:
            left, right = abs(A[l]), abs(A[r])
            if left > right:
                final[r-l] = left * left
                l += 1
            else:
                final[r-l] = right * right
                r -= 1
        return final
