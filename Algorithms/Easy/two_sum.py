from typing import List


class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        
        d = {}

        for idx, num in enumerate(nums):
            k = target - num
            if k in d.keys():
                 return [d[k], idx]
            d[num] = idx
