class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        seen = {}
        for i, v in enumerate(nums):
            remaining = target - v
            if remaining in seen:
                return [seen[remaining], i]
            seen[v] = i
        return []


        ############################ method-2
        h_table = {}
        for i in range(len(nums)):
            diff = target - nums[i]
            if diff in h_table and h_table[diff] != i:
                return [h_table[diff], i]
            else:
                h_table[nums[i]] = i
