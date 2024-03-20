from typing import List


class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        i = 0
        count = 0
        result = nums[0]
        while i < len(nums):
            if nums[i] == result:
                count += 1
            else:
                count -= 1
                if count < 0:
                    result = nums[i]
                    count = 0
            i += 1
        
        return result
