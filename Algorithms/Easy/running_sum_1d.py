from typing import List

class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:
        
        s = nums[0]
        running_sum = [nums[0]]
        i = 0
        while i < len(nums) - 1:
            s += nums[i + 1]
            running_sum.append(s)
            i += 1
        
        return running_sum
